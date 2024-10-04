Create table orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_Description VARCHAR(50)
    order_amount DECIMAL(10, 2)
     );

INSERT INTO orders (order_id, order_Description, order_amount) VALUES
(1, 10,'Smartphone', 23000.00),
(2, 20,'Headphones', 630.00),
(3, 30,'Keyboard', 420.00);

Create table customers (
  customer_id INT PRIMARY KEY,
  customer_firstname VARCHAR(50)
       );

INSERT INTO customers (customer_id, customer_firstname) VALUES
(10, 'German'),
(20, 'Danke'),
(30, 'Bitte');

SELECT customers.customer_id, customers.customer_firstname, orders.order_amount
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;

