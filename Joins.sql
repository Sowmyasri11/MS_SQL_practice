/* Get all customers along with their orders 
but only for customers that have placed an order. */

SELECT *
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id;


/* Get all customers along with their orders, including 
orders without mataching customers. */

SELECT *
FROM customers c
LEFT JOIN orders o
On c.id = o.customer_id;

/* Get all customers who haven't placed any order */

SELECT *
FROM customers c
LEFT JOIN orders o
On c.id = o.customer_id
WHERE o.customer_id IS NULL;


/* Get all orders without matching customers . */

SELECT *
FROM customers c
RIGHT JOIN orders o
On c.id = o.customer_id
WHERE c.id IS NULL;


/* Find customers without orders and orders without customers. */

SELECT *
FROM customers c
FULL OUTER JOIN orders o
On c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;

