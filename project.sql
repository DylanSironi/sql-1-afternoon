-- table person
CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  person_name VARCHAR(50),
  person_age INTEGER,
  person_height INTEGER,
  person_city VARCHAR(50),
  person_favorite_color VARCHAR(50)
);

INSERT INTO person ( person_name, person_age, person_height, person_city, person_favorite_color ) 
VALUES 
( 'mike neil', 21, 182, 'la', 'green' ),
( 'steve ball', 31, 162, 'dc', 'blue' ),
( 'paul smith', 55, 182, 'atlanta', 'grey' ),
( 'jade wade', 12, 182, 'new york', 'red' ),
( 'martha white', 89, 182, 'dallas', 'grey' );

SELECT * FROM person
order by person_height desc;

SELECT * FROM person 
ORDER BY person_height ASC;

SELECT * FROM person 
ORDER BY person_age DESC;

SELECT * FROM person 
WHERE person_age > 20;

SELECT * FROM person 
WHERE person_age = 18;

SELECT * FROM person 
WHERE person_age < 20 OR person_age > 30;

SELECT * FROM person 
WHERE person_age != 27;

SELECT * FROM person 
WHERE person_favorite_color != 'red';

SELECT * FROM person
WHERE person_favorite_color != 'red' 
AND person_favorite_color != 'blue';

SELECT * FROM person 
WHERE person_favorite_color = 'orange' 
OR person_favorite_color = 'green';

SELECT * FROM person 
WHERE perseon_favorite_color 
IN ( 'orange', 'green', 'blue' );

SELECT * FROM person 
WHERE person_favorite_color 
IN ( 'yellow', 'purple' )

-- table orders

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY, 
    person_id INTEGER, 
    product_name VARCHAR(50), 
    product_price NUMERIC, 
    quantity INTEGER
);

INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
VALUES
    (0, 'Pepsi', 2.00, 3),
    (1, 'sandwhich', 5.00, 2)
;

SELECT * FROM orders;

SELECT SUM(quantity) 
FROM orders;

SELECT SUM(product_price * quantity) 
FROM orders;

SELECT SUM(product_price * quantity) 
FROM orders 
WHERE person_id = 1;

-- table artist

INSERT INTO artist ( name ) 
VALUES ( 'POSTY' ),
('EMINEM'),
('QUEEN');

SELECT * FROM artist 
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist 
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist 
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- table employee
SELECT first_name, last_name 
FROM employee 
WHERE city = 'Calgary';

SELECT MAX(birth_date) 
from employee;

SELECT MIN(birth_date) 
from employee;

SELECT * FROM employee 
WHERE reports_to = 2;

SELECT COUNT(*) 
FROM employee 
WHERE city = 'Lethbridge';

--  table invoice

SELECT COUNT(*) 
FROM invoice 
WHERE billing_country = 'USA';

SELECT MAX(total) 
FROM invoice;

SELECT MIN(total) 
FROM invoice;

SELECT * FROM invoice 
WHERE total > 5;

SELECT COUNT(*) 
FROM invoice 
WHERE total < 5;

SELECT COUNT(*) FROM invoice 
WHERE billing_state 
in ('CA', 'TX', 'AZ');

SELECT AVG(total) 
FROM invoice;

SELECT SUM(total) 
FROM invoice;