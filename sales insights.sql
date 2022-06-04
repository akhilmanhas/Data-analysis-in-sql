--Data analysis 

--Show all customer records

SELECT * FROM customers;

--Total number of customers

SELECT count(*) FROM customers;

--Transactions for Chennai market (market code for chennai is Mark001

SELECT * FROM transactions where market_code='Mark001';

--Show distrinct product codes that were sold in chennai

SELECT distinct product_code FROM transactions where market_code='Mark001';

--Transactions where currency is US dollars

SELECT * from transactions where currency="USD"

--Transactions in 2020 join by date table

SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

--Total revenue in year 2020(We can see data of any year),

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";

--Total revenue in year 2020, January Month,

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");

--Total revenue in year 2020 in Chennai(if we want the data of other cities then simple write the name of city in place of Chennai)

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";
