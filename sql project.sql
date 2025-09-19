select * from retail_sales
select * from retail_sales
where transactions_id is null;
select * from retail_sales
where sale_date is 
select * from retail_sales
where transactions_id is null
or
sale_date is null 
or 
sale_time is null
or
gender is null
or 
category is null
or 
quantiy is null
or 
cogs is null
or
total_sale is null;
Delete from retail_sales
where transactions_id is null
or
sale_date is null 
or 
sale_time is null
or
gender is null
or 
category is null
or 
quantiy is null
or 
cogs is null
or
total_sale is null;
select count(*) from retail_sales

--Data Explorations

-- How Many Sales we have?

select count(*) as total_sale from retail_sales

-- How many unique customer we have ?

select count(distinct(customer_id)) as total_sale from retail_sales


select distinct(category) from retail_sales

-- Data Analysis & Business key problems and answers?
--	Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'
--	Q.2 Write a SQL query to find the average age of customer who purchased items from the 'Beauty Category'
--	Q.3 Write a SQL query to find all the transactions where the total_dales is greater than 1000.
--  Q.4 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
--  Q.5 Write a SQL query to calculate the average salary for each month. find out best selling month in each year.
--  Q.6 Write a SQL query to find the top 5 customer based on the highest total sales .
--  Q.7 Write a SQL query to find the number of unique customer who purchased items for each category.
--  Q.8 Write

-- Data Exploration 
--How many sales we have ?
select count(*) as total_sales from retail_sales 

-- How many unique customer we have ?

select count(distinct(customer_id)) as total_sale from retail_sales

select distinct(category) from retail_sales

--	Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

select * 
from retail_sales
where sale_date='2022-11-05';


--	Q.2 Write a SQL query to find the average age of customer who purchased items from the 'Beauty Category'

select round(avg(age),2) from retail_sales
where category='Beauty';

-- Q.3 Write a SQL query to retrive all transcations where the category is 'clothing' and the quantity sold is more than 10 in the month of nov-2022 ?

select * from retail_sales
where category='Clothing' 
and 
to_char(sale_date,'YYYY-MM')='2022-11' AND quantiy>=4
group by 1

-- Q.4 Write a SQL query to calculate the total sales for each category

select category,sum(total_sale) as net_sale,count(*) as total_orders
from retail_sales
group by 1

--	Q.5 Write a SQL query to find all the transactions where the total_dales is greater than 1000.

select * from retail_sales
where total_sale>=1000;

--  Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
select category,gender, sum(transactions_id) as total_trans
from retail_sales 
group by category,gender
order by 1;

--  Q.7 Write a SQL query to calculate the average sale for each month. find out best selling month in each year.

select 
extract(year from sale_date) as year,
extract(month from sale_date) as month,
avg(total_sale) as avg_total_sale 
from retail_sales
group by 1,2
order by 1,2

--  Q.6 Write a SQL query to find the top 5 customer based on the highest total sales .

select 
customer_id,sum(total_sale) as total_sales
from retail_sales
group by 1
order by 2 desc
limit 5;

-- Q.8 Write a SQL query to find the number of unique customers who purchased items for each category ?

select category,count(distinct customer_id) as cnt_unique_cs from  retail_sales
group by category; 


-- Q.10 Write a SQL query to create each shift and numbers of orders (Example Morning<=12, Afternoon between 12 & 17, Evening >17 ?
select *,
case 
when extract(hour from sale_time) <12 then 'Morning'
when extract(hour from sale_time) between 12 and 17 then 'Afternoon'
else  'Evening'
end as shift
from retail_sales

-- End as project



