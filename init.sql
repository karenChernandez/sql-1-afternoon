-- Table - person
-- #1
-- #2
-- #3
-- #4
-- #5
-- #6
-- #7
-- #8
-- #9
-- #10
-- #11
-- #12
-- #13
-- #14


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
