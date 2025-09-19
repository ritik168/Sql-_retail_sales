## Project Overview 

#### Project Title: Retail sales Analysis
#### Level: Begineer 
#### Database: p1_retail_db

##### This project is designed to demonstrate SQL skills and technique typically used by data analysts to explore, clean and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business question through SQL queries. This project is ideal fro those who as staring their journey in data analysis and want to build a solid foundation in SQL.

## Objectives
#### 1. set up retail sales database : create and populate a retails sales database with the provided sales data.
#### 2. Data cleaning: Identify and remove any records with missing or null values.
#### 3. Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to perform basic exploratory data analysis to understand the dataset.
#### 4. Business Analysis: Use SQL to answer specific business question and derive insightfrom the sales data.


## Project structure

### 1. Database Setup
- **Database Creations: The project start by creating a database name p1_retail_db
- **Table Creation: A table named retail_sales is created to store the data. The table structure     includes columns for transaction_id , sale date,sale time,customer id,gender,age ,product        category,quantity sold,unit price ,cost of goods ,and total sales amount.

```Sql

create DATABASE p1_retail_db;

create table retail_sales
(
  transactions_id	int primary key,
	sale_date date,
	sale_time time,
	customer_id	int,
	age	int,
	category varchar(50)	
	quantiy	int,
	price_per_unit	float,
	cogs float,
	total_sale float
);
```

### 2. Data Exploration & cleaning

- **Record Count**: Determine the total number of records in the dataset.
- **Customer count**: Find out how many unique customers are in the Dataset.
- **Category Count**:Identifying all unique product categories inthe dataset.
- **Null value checks**: check for any null values in the dataset and delete records with            missing data.

``` sql
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
```

### 3.Data Analysis & Findings

The following sql queries were developed to answer specific question to business questions.

1. ** Retrieve  sales made on specific date **:
```sql
   select * 
from retail_sales
where sale_date='2022-11-05';
```

2. ** Write a sql queries to retrieve all columns for sales made on '2022-11-05'**:
```sql
   select * from retail_sales
where category='Clothing' 
and 
to_char(sale_date,'YYYY-MM')='2022-11' AND quantiy>=4
group by 1
```
 
3. ** Calculate total sales per category**:
```sql
select category,gender, sum(transactions_id) as total_trans
from retail_sales 
group by category,gender
order by 1;
```
   
5. ** Write a SQL query to find the average age of customer who purchased items from the 'Beauty Category'**:
```sql
select round(avg(age),2) from retail_sales
where category='Beauty';
```
5.**Write a SQL query to find all the transactions where the total_dales is greater than 1000**:
``sql
select * from retail_sales
where total_sale>=1000;
```
6.**Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category**:

```sql
select category,gender, sum(transactions_id) as total_trans
from retail_sales 
group by category,gender
order by 1;
```
7.**Write a SQL query to calculate the average salary for each month. find out best selling month in each year**:
```sql
select 
extract(year from sale_date) as year,
extract(month from sale_date) as month,
avg(total_sale) as avg_total_sale 
from retail_sales
group by 1,2
order by 1,2
```
8.**Write a SQL query to find the top 5 customer based on the highest total sales**:
```sql
select 
customer_id,sum(total_sale) as total_sales
from retail_sales
group by 1
order by 2 desc
limit 5;
```
9.**Write a SQL query to find the number of unique customer who purchased items for each category**:
```sql
select category,count(distinct customer_id) as cnt_unique_cs from  retail_sales
group by category; 

```




















