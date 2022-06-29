-- 1. Get all customers and their addresses.

SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;


-- 2. Get all orders and their line items (orders, quantity and product).

SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id JOIN products ON products.id = line_items.product_id;


-- 3. Which warehouses have cheetos?

SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'cheetos';


-- 4. Which warehouses have diet pepsi?
SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'diet pepsi';


-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


SELECT COUNT (orders.id) AS "order count", customers.first_name, customers.last_name FROM customers JOIN addresses ON customers.id = addresses.customer_id JOIN orders ON addresses.id = orders.address_id GROUP BY customers.id;

-- 6. How many customers do we have?

SELECT COUNT (customers.id) AS "customer count" FROM customers;

 --7. How many products do we carry?
 
 SELECT COUNT (products.id) as "product count" FROM products;
 
 --8. What is the total available on-hand quantity of diet pepsi?
 
 SELECT COUNT (on_hand) as "pepsi quantity" FROM warehouse_product JOIN products on warehouse_product.product_id = products.id;


