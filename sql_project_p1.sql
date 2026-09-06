create database sql_project_p1;
 use sql_project_p1;


-- drop table if exists retail_sales;
create table retail_sales(
	transactions_id int primary key,
	sale_date	date,
    sale_time	time,
    customer_id	int,
    gender	varchar(15),
    age	int,
    category	varchar(15),
    quantiy	int,
    price_per_unit float,	
    cogs	float,
    total_sale float
);

-- describe retail_sales;


select * from retail_sales;

select count(*) from retail_sales;

-- data cleaning

select count(*) from retail_sales
where
transactions_id is NULL or
sale_date is NULL or
sale_time is NULL or
customer_id is NULL or
  gender is NULL or
age is NULL or
category is NULL or
 quantiy is NULL or
price_per_unit is NULL or
cogs is NULL or
total_sale is NULL ;

-- data exploration

-- Q1 total sales
select count(*) from retail_sales;

-- Q2 total number of unique customers
select count(distinct customer_id) from retail_sales;

-- Q3 total number of unique categories
select count(distinct category) from retail_sales;
select distinct category from retail_sales;



-- data analysis

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'
select * from retail_sales 
where sale_date ='2022-11-05';


-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
select * from retail_sales
where category='Clothing' and quantiy>=4
and month(sale_date)=11
 and year(sale_date)=2022;

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
select category,sum(total_sale) as total_sales_per_each_category from retail_sales group by category;


-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
	select avg(age) as avergae_age from retail_sales where category='Beauty';

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
select * from retail_sales where total_sale>1000;


-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
select gender,category,count(transactions_id) as total_transactions from retail_sales 
group 
by 
gender,category
order by 1 desc;

 
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
SELECT *
FROM (
    SELECT
        EXTRACT(YEAR FROM sale_date) AS year,
        EXTRACT(MONTH FROM sale_date) AS month,
        AVG(total_sale) AS avg_sale,
        RANK() OVER (
            PARTITION BY EXTRACT(YEAR FROM sale_date)
            ORDER BY AVG(total_sale) DESC
        ) AS `rank`
    FROM retail_sales
    GROUP BY 1, 2
) AS t1
WHERE `rank` = 1;

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales

 

select customer_id,sum(total_sale) as total_sales from retail_sales 
group by customer_id 
order by total_sales desc limit 5; 


-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
select category,count(distinct customer_id) as total_num_of_customers from retail_sales group by category;

-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

select 
case
	when hour(sale_time)<=12 then 'Morning'
	when hour(sale_time)>12 and hour(sale_time)<=17 then 'afternoon'
	else 'evening'
end as shift,

	count(transactions_id) as no_of_orders 
from retail_sales 
group by shift;	



-- project end

