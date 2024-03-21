show databases;

use pet_shop;

select
    *
from
    cats5;

inserting data create table employees (
    id int auto_increment primary key,
    last_name varchar(100) not null,
    first_name varchar(100) not null,
    middle_name varchar(50),
    age int not null,
    current_status varchar(100) not null default 'employee'
);

desc employees;

crud besic show tables;

drop table cats;

show tables;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO
    cats(name, breed, age)
VALUES
    ('Ringo', 'Tabby', 4),
    ('Cindy', 'Maine Coon', 10),
    ('Dumbledore', 'Maine Coon', 11),
    ('Egg', 'Persian', 4),
    ('Misty', 'Tabby', 13),
    ('George Michael', 'Ragdoll', 9),
    ('Jackson', 'Sphynx', 7);

select
    *
from
    cats;

select
    name
from
    cats;

select
    name
from
    cats
where
    age = 4;

select
    *
from
    cats
where
    name = 'eGG';

select
    *
from
    cats
where
    cat_id = age;

select
    *
from
    cats;

select
    *
from
    cats3;

update
    cats
set
    age = 14
where
    name = 'misty';

select
    *
from
    cats;

update
    cats
set
    name = 'jack'
where
    name = 'jackson';

update
    cats
set
    breed = 'British Shorthair'
where
    name = 'Ringo';

update
    cats
set
    age = 12
where
    breed = 'maine coon';

delete from
    cats
where
    name = 'egg';

delete from
    cats
where
    cat_id = age;

delete from
    cats3;

-- crud challenge
create database shirts_db;

use shirts_db;

CREATE TABLE shirts (
    shirt_id INT AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size VARCHAR(5),
    last_worn INT
);

desc shirts;

INSERT INTO
    shirts (article, color, shirt_size, last_worn)
VALUES
    ('t-shirt', 'white', 'S', 10),
    ('t-shirt', 'green', 'S', 200),
    ('polo shirt', 'black', 'M', 10),
    ('tank top', 'blue', 'S', 50),
    ('t-shirt', 'pink', 'S', 0),
    ('polo shirt', 'red', 'M', 5),
    ('tank top', 'white', 'S', 200),
    ('tank top', 'blue', 'M', 15);

select
    *
from
    shirts;

INSERT INTO
    shirts (article, color, shirt_size, last_worn)
VALUES
    ('polo shirt', 'purple', 'M', 50);

SELECT
    article,
    color
FROM
    shirts;

SELECT
    *
FROM
    shirts
WHERE
    shirt_size = 'M';

SELECT
    article,
    color,
    shirt_size,
    last_worn
FROM
    shirts
WHERE
    shirt_size = 'M';

UPDATE
    shirts
SET
    shirt_size = 'L'
WHERE
    article = 'polo shirt';

UPDATE
    shirts
SET
    last_worn = 0
WHERE
    last_worn = 15;

UPDATE
    shirts
SET
    color = 'off white',
    shirt_size = 'XS'
WHERE
    color = 'white';

SELECT
    *
FROM
    shirts
WHERE
    last_worn = 200;

DELETE FROM
    shirts
WHERE
    last_worn = 200;

SELECT
    *
FROM
    shirts
WHERE
    article = 'tank top';

DELETE FROM
    shirts
WHERE
    article = 'tank top';

SELECT
    *
FROM
    shirts;

DELETE FROM
    shirts;

DROP TABLE shirts;

show tables;

DESC shirts;

-- string function
create database book_shop;

use book_shop;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY(book_id)
);

INSERT INTO
    books (
        title,
        author_fname,
        author_lname,
        released_year,
        stock_quantity,
        pages
    )
VALUES
    (
        'The Namesake',
        'Jhumpa',
        'Lahiri',
        2003,
        32,
        291
    ),
    (
        'Norse Mythology',
        'Neil',
        'Gaiman',
        2016,
        43,
        304
    ),
    ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
    (
        'Interpreter of Maladies',
        'Jhumpa',
        'Lahiri',
        1996,
        97,
        198
    ),
    (
        'A Hologram for the King: A Novel',
        'Dave',
        'Eggers',
        2012,
        154,
        352
    ),
    ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
    (
        'The Amazing Adventures of Kavalier & Clay',
        'Michael',
        'Chabon',
        2000,
        68,
        634
    ),
    ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
    (
        'A Heartbreaking Work of Staggering Genius',
        'Dave',
        'Eggers',
        2001,
        104,
        437
    ),
    ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
    (
        'What We Talk About When We Talk About Love: Stories',
        'Raymond',
        'Carver',
        1981,
        23,
        176
    ),
    (
        "Where I'm Calling From: Selected Stories",
        'Raymond',
        'Carver',
        1989,
        12,
        526
    ),
    ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
    (
        'Cannery Row',
        'John',
        'Steinbeck',
        1945,
        95,
        181
    ),
    (
        'Oblivion: Stories',
        'David',
        'Foster Wallace',
        2004,
        172,
        329
    ),
    (
        'Consider the Lobster',
        'David',
        'Foster Wallace',
        2005,
        92,
        343
    );

SELECT
    CONCAT('pi', 'ckle');

SELECT
    CONCAT(author_fname, ' ', author_lname) AS author_name
FROM
    books;

SELECT
    CONCAT_WS('-', title, author_fname, author_lname)
FROM
    books;

SELECT
    SUBSTRING('Hello World', 1, 4);

SELECT
    SUBSTRING('Hello World', 7);

SELECT
    SUBSTRING('Hello World', -3);

SELECT
    SUBSTRING(title, 1, 10) AS 'short title'
FROM
    books;

SELECT
    SUBSTR(title, 1, 10) AS 'short title'
FROM
    books;

SELECT
    CONCAT (SUBSTRING(title, 1, 10), '...') AS 'short title'
FROM
    books;

SELECT
    REVERSE(
        UPPER('Why does my cat look at me with such hatred?')
    );

SELECT
    REPLACE(title, ' ', '->') AS title
FROM
    books;

SELECT
    author_lname AS forwards,
    REVERSE(author_lname) AS backwards
FROM
    books;

SELECT
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM
    books;

SELECT
    CONCAT(title, ' was released in ', released_year) AS blurb
FROM
    books;

SELECT
    title,
    CHAR_LENGTH(title) AS character_count
FROM
    books;

SELECT
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;

-- Refining Selections
INSERT INTO
    books (
        title,
        author_fname,
        author_lname,
        released_year,
        stock_quantity,
        pages
    )
VALUES
    ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    (
        'Lincoln In The Bardo',
        'George',
        'Saunders',
        2017,
        1000,
        367
    );

SELECT
    author_lname
FROM
    books;

SELECT
    DISTINCT author_lname
FROM
    books;

SELECT
    author_fname,
    author_lname
FROM
    books;

SELECT
    DISTINCT CONCAT(author_fname, ' ', author_lname)
FROM
    books;

SELECT
    DISTINCT author_fname,
    author_lname
FROM
    books;

SELECT
    *
FROM
    books
ORDER BY
    author_lname;

SELECT
    *
FROM
    books
ORDER BY
    author_lname DESC;

SELECT
    *
FROM
    books
ORDER BY
    released_year;

SELECT
    book_id,
    author_fname,
    author_lname,
    pages
FROM
    books
ORDER BY
    2 desc;

SELECT
    book_id,
    author_fname,
    author_lname,
    pages
FROM
    books
ORDER BY
    author_lname,
    author_fname;

SELECT
    title,
    author_fname,
    author_lname,
    pages
FROM
    books
WHERE
    author_fname LIKE '%da%';

SELECT
    title,
    author_fname,
    author_ln ame,
    pages
FROM
    books
WHERE
    title LIKE '%:%';

SELECT
    *
FROM
    books
WHERE
    author_fname LIKE '____';

SELECT
    *
FROM
    books
WHERE
    author_fname LIKE '_a_';

SELECT
    title
FROM
    books
WHERE
    title LIKE '%stories%';

SELECT
    title,
    pages
FROM
    books
ORDER BY
    pages DESC
LIMIT
    1;

SELECT
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY
    released_year DESC
LIMIT
    3;

SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';

SELECT
    title,
    released_year,
    stock_quantity
FROM
    books
ORDER BY
    stock_quantity
LIMIT
    3;

SELECT
    title,
    author_lname
FROM
    books
ORDER BY
    author_lname,
    title;

SELECT
    title,
    author_lname
FROM
    books
ORDER BY
    2,
    1;

SELECT
    CONCAT(
        'MY FAVORITE AUTHOR IS ',
        UPPER(author_fname),
        ' ',
        UPPER(author_lname),
        '!'
    ) AS yell
FROM
    books
ORDER BY
    author_lname;

-- 09 - Aggregate Functions
SELECT
    author_lname,
    COUNT(*)
FROM
    books
GROUP BY
    author_lname;

SELECT
    author_lname,
    COUNT(*) AS books_written
FROM
    books
GROUP BY
    author_lname
ORDER BY
    books_written DESC;

SELECT
    title,
    pages
FROM
    books
WHERE
    pages = (
        SELECT
            MAX(pages)
        FROM
            books
    );

SELECT
    MIN(released_year)
FROM
    books;

SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year = (
        SELECT
            MIN(released_year)
        FROM
            books
    );

SELECT
    COUNT(*)
FROM
    books;

SELECT
    released_year,
    COUNT(*)
FROM
    books
GROUP BY
    released_year;

SELECT
    AVG(released_year)
FROM
    books
GROUP BY
    author_lname,
    author_fname;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    pages
FROM
    books
WHERE
    pages = (
        SELECT
            MAX(pages)
        FROM
            books
    );

SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    pages
FROM
    books
ORDER BY
    pages DESC
LIMIT
    1;

SELECT
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY
    released_year
ORDER BY
    released_year;

-- 10 - Revisiting Data Types
SELECT
    CURTIME();

SELECT
    CURDATE();

SELECT
    DAYOFWEEK(CURDATE());

SELECT
    DAYOFWEEK(NOW());

SELECT
    DATE_FORMAT(NOW(), '%w') + 1;

SELECT
    DAYNAME(NOW());

SELECT
    DATE_FORMAT(NOW(), '%W');

SELECT
    DATE_FORMAT(CURDATE(), '%m/%d/%Y');

SELECT
    DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    tweets (content, username)
VALUES
    ('this is my first tweet', 'coltscat');

SELECT
    *
FROM
    tweets;

INSERT INTO
    tweets (content, username)
VALUES
    ('this is my second tweet', 'coltscat');

SELECT
    *
FROM
    tweets;

-- Comparison & Logical Operators
SELECT
    *
FROM
    books
WHERE
    released_year < 1980;

SELECT
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
    OR author_lname = 'Chabon';

SELECT
    *
FROM
    books
WHERE
    author_lname = 'Lahiri'
    AND released_year > 2000;

SELECT
    *
FROM
    books
WHERE
    pages >= 100
    AND pages <= 200;

SELECT
    *
FROM
    books
WHERE
    pages BETWEEN 100
    and 200;

SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname LIKE 'C%'
    OR author_lname LIKE 'S%';

SELECT
    title,
    author_lname
FROM
    books
WHERE
    SUBSTR(author_lname, 1, 1) in ('C', 'S');

SELECT
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' THEN 'Memoir'
        WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memior'
        ELSE 'Novel'
    END AS type
FROM
    books;

SELECT
    author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS count
FROM
    books
WHERE
    author_lname IS NOT NULL
GROUP BY
    author_fname,
    author_lname;

-- 12 - Constraints  & ALTER TABLE
CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO
    contacts (name, phone)
VALUES
    ('billybob', '8781213455');

-- This insert would result in an error:
INSERT INTO
    contacts (name, phone)
VALUES
    ('billybob', '8781213455');

CREATE TABLE users (
    username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);

CREATE TABLE palindromes (
    word VARCHAR(100) CHECK(REVERSE(word) = word)
) CREATE TABLE users2 (
    username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age >= 0)
);

CREATE TABLE palindromes2 (
    word VARCHAR(100),
    CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
);

CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

CREATE TABLE houses (
    purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

ALTER TABLE
    houses
ADD
    CONSTRAINT positive_pprice CHECK (purchase_price >= 0);

ALTER TABLE
    houses DROP CONSTRAINT positive_pprice;

-- 13 - One to Many & Joins
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8, 2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO
    customers (first_name, last_name, email)
VALUES
    ('Boy', 'George', 'george@gmail.com'),
    ('George', 'Michael', 'gm@gmail.com'),
    ('David', 'Bowie', 'david@gmail.com'),
    ('Blue', 'Steele', 'blue@gmail.com'),
    ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO
    orders (order_date, amount, customer_id)
VALUES
    ('2016-02-10', 99.99, 1),
    ('2017-11-11', 35.50, 1),
    ('2014-12-12', 800.67, 2),
    ('2015-01-03', 12.50, 2),
    ('1999-04-11', 450.25, 5);

SELECT
    id
FROM
    customers
WHERE
    last_name = 'George';

SELECT
    *
FROM
    orders
WHERE
    customer_id = 1;

SELECT
    *
FROM
    orders
WHERE
    customer_id = (
        SELECT
            id
        FROM
            customers
        WHERE
            last_name = 'George'
    );

SELECT
    *
FROM
    customers,
    orders;

SELECT
    *
FROM
    customers
    JOIN orders ON orders.customer_id = customers.id;

SELECT
    first_name,
    last_name,
    order_date,
    amount
FROM
    customers
    JOIN orders ON orders.customer_id = customers.id;

SELECT
    *
FROM
    orders
    JOIN customers ON customers.id = orders.customer_id;

SELECT
    first_name,
    last_name,
    IFNULL(SUM(amount), 0) AS money_spent
FROM
    customers
    LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY
    first_name,
    last_name;

SELECT
    first_name,
    last_name,
    order_date,
    amount
FROM
    customers
    RIGHT JOIN orders ON customers.id = orders.customer_id;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);

CREATE TABLE papers (
    title VARCHAR(50),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students (id)
);

SELECT
    first_name,
    title,
    grade
FROM
    students
    JOIN papers ON papers.student_id = students.id
ORDER BY
    grade DESC;

SELECT
    first_name,
    title,
    grade
FROM
    students
    LEFT JOIN papers ON papers.student_id = students.id;

SELECT
    first_name,
    IFNULL(title, 'MISSING'),
    IFNULL(grade, 0)
FROM
    students
    LEFT JOIN papers ON papers.student_id = students.id;

SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM
    students
    LEFT JOIN papers ON students.id = papers.student_id
GROUP BY
    first_name
ORDER BY
    average DESC;

SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
        WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
        ELSE 'failing'
    END AS passing_status
FROM
    students
    LEFT JOIN papers ON students.id = papers.student_id
GROUP BY
    first_name
ORDER BY
    average DESC;

-- 14 - Many to Many
CREATE TABLE reviewers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE series (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    released_year YEAR,
    genre VARCHAR(100)
);

CREATE TABLE reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    rating DECIMAL(2, 1),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY (series_id) REFERENCES series (id),
    FOREIGN KEY (reviewer_id) REFERENCES reviewers (id)
);

INSERT INTO
    series (title, released_year, genre)
VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');

INSERT INTO
    reviewers (first_name, last_name)
VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');

INSERT INTO
    reviews(series_id, reviewer_id, rating)
VALUES
    (1, 1, 8.0),
    (1, 2, 7.5),
    (1, 3, 8.5),
    (1, 4, 7.7),
    (1, 5, 8.9),
    (2, 1, 8.1),
    (2, 4, 6.0),
    (2, 3, 8.0),
    (2, 6, 8.4),
    (2, 5, 9.9),
    (3, 1, 7.0),
    (3, 6, 7.5),
    (3, 4, 8.0),
    (3, 3, 7.1),
    (3, 5, 8.0),
    (4, 1, 7.5),
    (4, 3, 7.8),
    (4, 4, 8.3),
    (4, 2, 7.6),
    (4, 5, 8.5),
    (5, 1, 9.5),
    (5, 3, 9.0),
    (5, 4, 9.1),
    (5, 2, 9.3),
    (5, 5, 9.9),
    (6, 2, 6.5),
    (6, 3, 7.8),
    (6, 4, 8.8),
    (6, 2, 8.4),
    (6, 5, 9.1),
    (7, 2, 9.1),
    (7, 5, 9.7),
    (8, 4, 8.5),
    (8, 2, 7.8),
    (8, 6, 8.8),
    (8, 5, 9.3),
    (9, 2, 5.5),
    (9, 3, 6.8),
    (9, 4, 5.8),
    (9, 6, 4.3),
    (9, 5, 4.5),
    (10, 5, 9.9),
    (13, 3, 8.0),
    (13, 4, 7.2),
    (14, 2, 8.5),
    (14, 3, 8.9),
    (14, 4, 8.9);

SELECT
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    CASE
        WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS status
FROM
    reviewers
    LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY
    first_name,
    last_name;

SELECT
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviewers
    INNER JOIN reviews ON reviews.reviewer_id = reviewers.id
    INNER JOIN series ON reviews.series_id = series.id;

-- 15 - Views, Modes, & More!
CREATE VIEW full_reviews AS
SELECT
    title,
    released_year,
    genre,
    rating,
    first_name,
    last_name
FROM
    reviews
    JOIN series ON series.id = reviews.series_id
    JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SELECT
    *
FROM
    full_reviews;

CREATE VIEW ordered_series AS
SELECT
    *
FROM
    series
ORDER BY
    released_year;

CREATE
OR REPLACE VIEW ordered_series AS
SELECT
    *
FROM
    series
ORDER BY
    released_year DESC;

ALTER VIEW ordered_series AS
SELECT
    *
FROM
    series
ORDER BY
    released_year;

DROP VIEW ordered_series;

SELECT
    title,
    AVG(rating),
    COUNT(rating) AS review_count
FROM
    full_reviews
GROUP BY
    title
HAVING
    COUNT(rating) > 1;

SELECT
    first_name,
    released_year,
    genre,
    AVG(rating)
FROM
    full_reviews
GROUP BY
    released_year,
    genre,
    first_name WITH ROLLUP;

-- 16 - Window Functions
CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);

INSERT INTO
    employees (department, salary)
VALUES
    ('engineering', 80000),
    ('engineering', 69000),
    ('engineering', 70000),
    ('engineering', 103000),
    ('engineering', 67000),
    ('engineering', 89000),
    ('engineering', 91000),
    ('sales', 59000),
    ('sales', 70000),
    ('sales', 159000),
    ('sales', 72000),
    ('sales', 60000),
    ('sales', 61000),
    ('sales', 61000),
    ('customer service', 38000),
    ('customer service', 45000),
    ('customer service', 61000),
    ('customer service', 40000),
    ('customer service', 31000),
    ('customer service', 56000),
    ('customer service', 55000);

SELECT
    emp_no,
    department,
    salary,
    AVG(salary) OVER()
FROM
    employees;

SELECT
    emp_no,
    department,
    salary,
    MIN(salary) OVER(),
    MAX(salary) OVER()
FROM
    employees;

SELECT
    emp_no,
    department,
    salary,
    MIN(salary),
    MAX(salary)
FROM
    employees;

SELECT
    emp_no,
    department,
    salary,
    SUM(salary) OVER(
        PARTITION BY department
        ORDER BY
            salary
    ) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM
    employees;

SELECT
    emp_no,
    department,
    salary,
    MIN(salary) OVER(
        PARTITION BY department
        ORDER BY
            salary DESC
    ) as rolling_min
FROM
    employees;

SELECT
    emp_no,
    department,
    salary,
    ROW_NUMBER() OVER(
        PARTITION BY department
        ORDER BY
            SALARY DESC
    ) as dept_row_number,
    RANK() OVER(
        PARTITION BY department
        ORDER BY
            SALARY DESC
    ) as dept_salary_rank,
    RANK() OVER(
        ORDER BY
            salary DESC
    ) as overall_rank,
    DENSE_RANK() OVER(
        ORDER BY
            salary DESC
    ) as overall_dense_rank,
    ROW_NUMBER() OVER(
        ORDER BY
            salary DESC
    ) as overall_num
FROM
    employees
ORDER BY
    overall_rank;

SELECT
    emp_no,
    department,
    salary,
    salary - LAG(salary) OVER(
        PARTITION BY department
        ORDER BY
            salary DESC
    ) as dept_salary_diff
FROM
    employees;

