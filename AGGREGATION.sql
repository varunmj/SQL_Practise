### COUNT:

SELECT COUNT(*) AS account_count
FROM accounts

### NULL:

SELECT *
FROM accounts
WHERE accounts.primary_poc IS NULL

### AGGREGATION :

/*
1.Find the total amount of poster_qty paper ordered in the orders table.
*/

SELECT SUM(poster_qty)
FROM orders

/*
2. Find the total amount of standard_qty paper ordered in the orders table.
*/

SELECT SUM(standard_qty)
FROM orders

/*
3. Find the total dollar amount of sales using the total_amt_usd in the orders table.
*/

SELECT SUM(total_amt_usd)
FROM orders

/*
4. Find the total amount spent on standard_amt_usd and gloss_amt_usd paper for each order in the orders table. This should give a dollar amount for each order in the table.
*/

SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
FROM orders;

/*
5. Though the price/standard_qty paper varies from one order to the next. I would like this ratio across all of the sales made in the orders table.
*/

SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS standard_price_per_unit
FROM orders;
