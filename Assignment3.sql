CREATE DATABASE order_details;

USE order_details;

CREATE TABLE consumer (
  consumer_id INT PRIMARY KEY,
  consumer_name VARCHAR(255),
  sales_manager_id INT
);

CREATE TABLE orders (
  order_no INT PRIMARY KEY,
  purchase_amount INT,
  order_date DATE,
  consumer_id INT,
  sales_manager_id INT
);

CREATE TABLE sales_manager (
  sales_manager_id INT PRIMARY KEY,
  name VARCHAR(255),
  city VARCHAR(255)
);

INSERT INTO consumer (consumer_id, consumer_name, sales_manager_id)
VALUES (1, 'Anil', 1), (2, 'Suresh', 2), (3, 'Bobby', 3), (4, 'Akhil', 4), (5, 'Nivesh', 1);

INSERT INTO orders (order_no, purchase_amount, order_date, consumer_id, sales_manager_id)
VALUES (1001, 100, '2022-01-01', 1, 1), (1002, 200, '2022-02-01', 2, 2), (1003, 300, '2022-03-01', 3, 3), (1004, 400, '2022-04-01', 4, 4), (1005, 500, '2022-05-01', 5, 1);

INSERT INTO sales_manager (sales_manager_id, name, city)
VALUES (1, 'Tarun', 'RJY'), (2, 'Bargav', 'KKD'), (3, 'Sandeep', 'VJY'), (4, 'Sumanth', 'HYD');

SELECT purchase_amount FROM orders WHERE purchase_amount BETWEEN 100 AND 500;

UPDATE orders
SET consumer_id = 6
WHERE order_no = 1005;

SELECT consumer.consumer_name, sales_manager.city, orders.order_no, orders.order_date, orders.purchase_amount, sales_manager.name FROM consumer INNER JOIN orders ON consumer.consumer_id = orders.consumer_id INNER JOIN sales_manager;

SELECT consumer.consumer_name, sales_manager.city, orders.order_no, orders.order_date, orders.purchase_amount, sales_manager.name
FROM consumer
INNER JOIN orders ON consumer.consumer_id = orders.consumer_id
INNER JOIN sales_manager ON orders.sales_manager_id = sales_manager.sales_manager_id
WHERE orders.purchase_amount < 500
ORDER BY consumer.consumer_id ASC;

SELECT consumer.consumer_name, sales_manager.city, orders.order_no, orders.order_date, orders.purchase_amount
FROM consumer
INNER JOIN orders ON consumer.consumer_id = orders.consumer_id
INNER JOIN sales_manager ON orders.sales_manager_id = sales_manager.sales_manager_id
ORDER BY orders.order_date ASC;