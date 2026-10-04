SELECT count(*) as total_customer 
FROM netflix_db.netflix_customers;

-- Active Customers
SELECT count(*) as active_customer
FROM netflix_db.netflix_customers
WHERE Account_Status = 'Active'; 

-- customers as per the subscription plan

SELECT subscription_plan, count(*) as customer_count
FROM netflix_db.netflix_customers
group by subscription_plan
order by customer_count desc;

-- Revenue as per the subscription plan

SELECT subscription_plan, sum(Customer_Revenue) as revenue
FROM netflix_db.netflix_customers
group by subscription_plan
order by revenue desc;

-- Popular Genre 
SELECT genre, count(*) as total_views
FROM
netflix_db.netflix_customers
group by genre
order by total_views desc;

-- Country_wise Customers
SELECT country, count(*) as customer
FROM
netflix_db.netflix_customers
GROUP BY country
order by customer desc;

-- Device

SELECT device,
count(*) as users
FROM
netflix_db.netflix_customers
GROUP BY device
ORDER BY users desc;

-- AVG Watch_Hours by Plan

SELECT Subscription_Plan, ROUND(avg(Watch_Hours),2) as avg_
FROM
netflix_db.netflix_customers
GROUP BY Subscription_Plan
ORDER BY avg_ desc;

-- Top 10 cx by revenue

SELECT customer_id, Customer_Name, sum(customer_revenue) as revenue
FROM
netflix_db.netflix_customers
GROUP BY customer_id, Customer_Name
order by revenue desc
LIMIT 10;

-- Movies Vs TV Shows 

SELECT Content_Type, count(Content_Type) as type1
FROM
netflix_db.netflix_customers
GROUP BY Content_Type
ORDER  BY type1 desc;

-- Avg Rating by Genre
SELECT Genre, ROUND(AVG(Avg_Rating),2) as rating
FROM
netflix_db.netflix_customers
GROUP BY Genre
ORDER BY rating desc;

-- Account Status

SELECT Account_Status, COUNT(*)
FROM 
netflix_db.netflix_customers
GROUP BY Account_Status;

-- 