SELECT * FROM customer;

SELECT * FROM order_;

-- Inner join
SELECT first_name, last_name, order_date, amount
FROM customer
INNER JOIN order_
ON customer.customer_id = order_.customer_id;
-- NOTE, no James Madison, no James Monroe

-- Left join
SELECT first_name, last_name, order_date, amount
FROM customer
LEFT JOIN order_
ON customer.customer_id = order_.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customer
LEFT JOIN order_
ON customer.customer_id = order_.customer_id
WHERE order_date IS NOT Null;

SELECT first_name, last_name, order_date, amount
FROM customer
LEFT JOIN order_
ON customer.customer_id = order_.customer_id
WHERE order_date IS Null;

-- Right join
SELECT first_name, last_name, order_date, amount
FROM customer
RIGHT JOIN order_
ON customer.customer_id = order_.customer_id;

-- Full Join
SELECT first_name, last_name, order_date, amount
FROM customer
FULL JOIN order_
ON customer.customer_id = order_.customer_id; 