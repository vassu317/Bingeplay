USE bingeplay;

WITH monthly_watch AS (
    SELECT
        user_id,
        SUM(
            CASE
                WHEN session_date >= '2024-05-01'
                 AND session_date < '2024-06-01'
                THEN watch_minutes
                ELSE 0
            END
        ) AS may_minutes,
        SUM(
            CASE
                WHEN session_date >= '2024-06-01'
                 AND session_date < '2024-07-01'
                THEN watch_minutes
                ELSE 0
            END
        ) AS june_minutes
    FROM watch_sessions
    WHERE user_id IS NOT NULL
      AND session_date >= '2024-05-01'
      AND session_date < '2024-07-01'
    GROUP BY user_id
),
churn_signals AS (
    SELECT
        user_id,
        may_minutes,
        june_minutes,
        ROUND(
            100.0 * (may_minutes - june_minutes) / may_minutes,
            2
        ) AS drop_percentage
    FROM monthly_watch
    WHERE may_minutes > 0
      AND june_minutes <= may_minutes * 0.5
)
SELECT
    cs.user_id,
    u.name,
    cs.may_minutes,
    cs.june_minutes,
    cs.drop_percentage,
    COUNT(*) OVER () AS total_churn_signal_users
FROM churn_signals cs
JOIN users u
    ON cs.user_id = u.user_id
ORDER BY cs.drop_percentage DESC, cs.user_id;