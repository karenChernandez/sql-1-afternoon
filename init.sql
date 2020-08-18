-- Table - person
-- #1
CREATE TABLE person
(person_id SERIAL PRIMARY KEY, 
name VARCHAR(200), 
age INT, 
height INT, 
city VARCHAR(200), 
favorite_color VARCHAR(200));
-- #2
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Karen Hernandez', 30, 175, 'Yuma', 'Black')
-- #3
SELECT * FROM person
ORDER BY height DESC;
-- #4
SELECT * FROM person
ORDER BY height ASC;
-- #5
SELECT * FROM person
ORDER BY age ASC;
-- #6
SELECT * FROM person
WHERE age > 20;
-- #7
SELECT * FROM person
WHERE age = 18;
-- #8
SELECT * FROM person
WHERE age <20 OR age >30;
-- #9
SELECT * FROM person
WHERE  age != 27;
-- #10
SELECT * FROM person
WHERE favorite_color != 'red';
-- #11
SELECT * FROM person
WHERE favorite_color != 'red' OR favorite_color != 'blue';
-- #12
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';
-- #13
SELECT * FROM person
WHERE favorite_color IN('orange', 'green', 'blue')
-- #14
SELECT * FROM person
WHERE favorite_color IN('yellow', 'purple')

-- Table -Orders
-- #1
CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
person_id INT,
product_name VARCHAR(200),
product_price NUMERIC,
quantity INT);

-- #2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
 VALUES
( 0, 'Shampoo', 8.50, 1 );

INSERT INTO orders
    (person_id, product_name, product_price, quantity)
VALUES
    ( 0, 'conditioner', 7.50, 1 );

-- #3
SELECT * FROM orders;
-- #4
SELECT SUM(quantity) 
FROM orders;

-- #5
SELECT SUM(total)
FROM orders;
-- #6
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 0;


-- Table- artist
-- #1
INSERT INTO artist (name)
VALUES ('COCO');
-- #2
SELECT *
FROM artist
ORDER BY name DESC LIMIT 10 ;
-- #3
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;
-- #4
SELECT * FROM artist
WHERE name LIKE 'Black%';
-- #5
SELECT * FROM artist;


-- Table- employee
-- #1
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';
-- #2
SELECT MAX(birth_date)
FROM employee;
-- #3
SELECT MIN(birth_date)
FROM employee;
-- #4
SELECT *
FROM employee
WHERE reports_to = 2;
-- #5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';


-- Table-invoice
-- #1
SELECT COUNT(*)
FROM invoice
WHERE billing_country ='USA';
-- #2
SELECT MAX(total)
FROM invoice;
-- #3
SELECT MIN(total)
FROM invoice;
-- #4
SELECT * FROM invoice
WHERE total > 5;
-- #5
SELECT COUNT(*) FROM invoice
WHERE total < 5;
-- #6
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');
-- #7
SELECT AVG(total) FROM invoice;
-- #8
SELECT SUM(total) FROM invoices;
