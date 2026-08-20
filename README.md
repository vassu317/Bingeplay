# Bingeplay
# BingePlay_Streaming_Analytics_Project

## Overview
BingePlay is a fictional OTT streaming platform analytics project developed as part of the Data Analytics & Data Science Track Minor Project.

This project focuses on analyzing user behavior, subscriptions, watch sessions, ratings, revenue, engagement, upgrades, churn signals, and content performance using SQL.

## Database Tables

The project uses five tables:

Table	           Description
users	           User information and signup details
subscriptions	   Subscription history and plan details
shows	           OTT shows, IMDb ratings, and subscription tier
watch_sessions	 User watch history and device usage
ratings          User ratings for shows

## Technologies Used

- MySQL
- SQL
- MySQL Workbench
- GitHub

## Project Objectives

- Analyze active subscriptions and revenue
- Track user signup trends
- Evaluate device-wise engagement
- Study rating distributions
- Compare original vs acquired content
- Detect binge-watching behavior
- Identify inactive users
- Find upgrade patterns
- Analyze user retention and churn signals

## Key Insights

### Q1 Active Revenue
- Active Subscriptions: 2340
- Monthly Revenue: ₹784,260

### Q2 Signup Momentum
- Highest Signups: May and June (600 users each)

### Q3 Device Analytics
- Highest Sessions: Mobile
- Highest Watch Time: Mobile
- Highest Completion Rate: Laptop

### Q4 Rating Distribution
- 4★ and 5★ Ratings: 71.34%

### Q5 Originals vs Acquired
- Originals Average IMDb Rating: 7.92
- Acquired Content Average IMDb Rating: 6.63
- Originals performed better by 1.29 rating points.

### Q7 Never Watched Users
- Total Q1 Signups: 1250
- Never Watched: 226

### Q8 Overpaying Users
- Premium/Family users watching only Basic content: 212

### Q9 Upgrade Success Cohort
- Successful Upgrade Users: 55
- Average Upgrade Time: 64.96 days

### Q10 Cliffhanger Comebacks
- Total Comeback Events: 4345
- Top Show: Rayalaseema Raga (S088)
- Comeback Events: 64

### Q11 Consecutive Week Engagement
- Users with 4+ Week Streak: 1675
- Longest Streak: 26 Weeks
- User ID: U00213

### Q12 Churn Signal Detection
- Total Churn Signal Users: 521

## Learning Outcomes

Through this project, I learned:

Writing optimized SQL queries for business analytics.
Using GROUP BY, HAVING, JOIN, and SUBQUERY.
Working with Common Table Expressions (CTEs).
Using Window Functions like ROW_NUMBER().
Solving real-world analytics and churn detection problems.

## Repository Structure

```text
.
├── Minor_project_Bingeplay.sql
├── README.md
