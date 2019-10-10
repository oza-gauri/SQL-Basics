
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
--

-- --------------------------------------------------------
-- Drop query
DROP SCHEMA IF EXISTS assignment_gaurioza;
CREATE SCHEMA assignment_gaurioza;
USE assignment_gaurioza;

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `a_id` int(11) NOT NULL,
  `a_first_name` varchar(30) NOT NULL,
  `a_last_name` varchar(30) NOT NULL,
  `filmno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`a_id`, `a_first_name`, `a_last_name`, `filmno_id`) VALUES
(1, 'Harry', 'Potter', 1),
(2, 'Gerrry', 'Berry', 2),
(3, 'Hannah', 'Berry', 3),
(4, 'Ron', 'Weasley', 4),
(5, 'James', 'Berry', 5),
(6, 'John', 'Shaw', 6),
(7, 'Peg', 'Leg', 7),
(8, 'Marty', 'Graw', 8),
(9, 'Olive ', 'Yu', 9),
(10, 'Tom ', 'Atoe', 10);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `countryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city`, `countryid`) VALUES
(1, 'Ottawa', 3),
(2, 'Brusells', 2),
(3, 'Ottawa', 5),
(4, 'NYC', 6),
(5, 'NYC', 6),
(6, 'NYC', 6),
(7, 'NYC', 6),
(8, 'NYC', 6),
(9, 'NYC', 6),
(10, 'NYC', 6),
(11, 'NYC', 6),
(12, 'NYC', 6),
(13, 'NYC', 6),
(14, 'NYC', 6),
(15, 'NYC', 6),
(16, 'NYC', 6),
(17, 'NYC', 6),
(18, 'NYC', 6),
(19, 'NYC', 6),
(20, 'NYC', 6),
(21, 'NYC', 6),
(22, 'NYC', 6),
(23, 'NYC', 6),
(24, 'NYC', 6),
(25, 'NYC', 6);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Belguim'),
(2, 'Brazil'),
(3, 'Canada'),
(4, 'Brazil'),
(5, 'Canada'),
(6, 'USA'),
(7, 'USA'),
(8, 'USA'),
(9, 'USA'),
(10, 'USA'),
(11, 'USA'),
(12, 'USA'),
(13, 'USA'),
(14, 'USA'),
(15, 'USA'),
(16, 'USA'),
(17, 'USA'),
(18, 'USA'),
(19, 'USA'),
(20, 'USA'),
(21, 'USA'),
(22, 'USA'),
(23, 'USA'),
(24, 'USA'),
(25, 'USA'),
(26, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_id` int(11) NOT NULL,
  `C_first_name` varchar(30) NOT NULL,
  `C_last_name` varchar(30) NOT NULL,
  `Amount_spent` int(11) NOT NULL,
  `cityid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `C_first_name`, `C_last_name`, `Amount_spent`, `cityid`) VALUES
(1, 'Clay', 'Jansen', 300, 1),
(2, 'Jessica', 'Devis', 250, 3),
(3, 'Alex', 'Standall', 200, 2),
(4, 'Justin', 'Foley', 150, 2),
(5, 'Draco', 'Malfoy', 100, 4),
(6, 'Severus', 'Snape', 120, 4),
(7, 'Lily', 'Potter', 130, 4),
(8, 'Cliff ', 'Hanger', 140, 4),
(9, 'Robin ', 'Banks', 160, 4),
(10, 'Monty ', 'Carlo', 170, 4),
(11, 'Rick ', 'O\'Shea', 180, 4),
(12, 'Brock ', 'Lee', 190, 4),
(13, 'Paige ', 'Turner', 210, 4),
(14, 'Gail ', 'Forcewind', 220, 4),
(15, 'Anna ', 'Mull', 230, 4),
(16, 'Cliff ', 'Hanger', 240, 4),
(17, 'Paul ', 'Molive', 110, 4),
(18, 'Pete ', 'Sariya', 90, 4),
(19, 'Anna ', 'Sthesia', 80, 4),
(20, 'Petey ', 'Cruiser', 70, 4),
(21, 'Speedwagon', 'Mario ', 60, 4),
(22, 'Mario ', 'Juno', 50, 4),
(23, 'Justin', 'Devis', 40, 4),
(24, 'Amy', 'Janson', 55, 4),
(25, 'Albus', 'Potter', 65, 4);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `film_id` int(30) NOT NULL,
  `film_title` varchar(25) NOT NULL,
  `film_category` varchar(30) NOT NULL,
  `film_length` int(200) NOT NULL,
  `no_of_actor` int(30) NOT NULL,
  `followingid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`film_id`, `film_title`, `film_category`, `film_length`, `no_of_actor`, `followingid`) VALUES
(1, 'avengers-1', 'sci-fi', 184, 5, 1),
(2, 'ironman', 'sci-fi', 187, 6, 2),
(3, 'avenger-2', 'sci-fi', 170, 9, 3),
(4, 'alien', 'sci-fi', 184, 4, 4),
(5, 'finding nemo', 'animated', 187, 7, 5),
(6, 'minions', 'animated', 170, 7, 1),
(7, 'toy-story-1', 'fiction', 160, 7, 2),
(8, 'captain america', 'non-fiction', 168, 7, 3),
(9, 'captain marvel', 'comedy', 150, 6, 4),
(10, 'toy-story-2', 'cartoon', 187, 7, 1),
(11, 'Harry Potter-1', 'fiction', 187, 7, 2),
(12, 'avenger-5', 'sci-fi', 167, 7, 3),
(13, 'ironman-3', 'sci-fi', 164, 7, 4),
(14, 'Black Panther', 'sci-fi', 167, 7, 1),
(15, 'Hulk', 'sci-fi', 140, 7, 2),
(16, 'Infinity war', 'sci-fi', 163, 7, 3),
(17, 'Harry Potter-4', 'Fiction', 168, 7, 4),
(18, 'Minions-3', 'Animated', 169, 7, 1),
(19, 'Madagascar', 'Animated', 165, 7, 2),
(20, 'Ice Age', 'Comedy', 187, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `follow_id` int(11) NOT NULL,
  `no_of_followers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`follow_id`, `no_of_followers`) VALUES
(1, 1000),
(2, 2000),
(3, 3000),
(4, 4000),
(5, 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `filmno_id` (`filmno_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `countryid` (`countryid`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_id`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`),
  ADD KEY `film` (`followingid`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`follow_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actor`
--
ALTER TABLE `actor`
  ADD CONSTRAINT `actor_ibfk_1` FOREIGN KEY (`filmno_id`) REFERENCES `film` (`film_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`countryid`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`cityid`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film` FOREIGN KEY (`followingid`) REFERENCES `followers` (`follow_id`);
COMMIT;

/*Below are queries for the assignment*/

/*1 The query returns name of all the countries in the database which start with the letter 'B' which are sorted by their name*/
SELECT
   country.country_name 
FROM
   country 
WHERE
   country.country_name LIKE 'B%'
ORDER BY
   country.country_name ASC;

/*output*/
/*
+--------------+
| country_name |
+--------------+
| Belguim      |
| Brazil       |
| Brazil       |
+--------------+   
*/

/*2 The query returns the first_name (sorted )of all actors with the last name 'berry'*/
SELECT
   actor.a_first_name AS First_Name
FROM
   actor 
WHERE
   actor.a_last_name = 'Berry' 
ORDER BY
   actor.a_first_name;

/*output*/
/*
+------------+
| First_Name |
+------------+
| Gerrry     |
| Hannah     |
| James      |
+------------+
*/

/*3 The query returns all the films whose length is more than 184 (inclusive) and order the result by the length.*/
SELECT
   film.film_title AS Title,
   film.film_length AS Length 
FROM
   film 
WHERE
   film.film_length >= 184 
ORDER BY
   film.film_length;

/*output*/
/*
+--------------+--------+
| Title        | Length |
+--------------+--------+
| avengers-1   |    184 |
| alien        |    184 |
| ironman      |    187 |
| finding nemo |    187 |
+--------------+--------+
*/

/*4 The query returns the first name ,last name and city of all customers who live in Canada */
SELECT
   customer.C_last_name AS Last_Name,
   customer.C_first_name AS First_Name,
   city.city AS City 
FROM
   customer 
   INNER JOIN
      city 
      ON customer.cityid = city.city_id 
   INNER JOIN
      country 
      ON city.countryid = country.country_id 
WHERE
   country.country_name = 'Canada';

/*output*/
/*
+-----------+------------+--------+
| Last_Name | First_Name | City   |
+-----------+------------+--------+
| Jansen    | Clay       | Ottawa |
| Devis     | Jessica    | Ottawa |
+-----------+------------+--------+  
*/

/*5 The query returns the number of customers from Brazil*/
SELECT
   COUNT(*) 
FROM
   customer 
   INNER JOIN
      city 
      ON customer.cityid = city.city_id 
   INNER JOIN
      country 
      ON city.countryid = country.country_id 
WHERE
   country.country_name = 'Brazil';

/*output*/
/*
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
*/

/*6 The query returns the "popular countries" i.e. the one with more than 20 customer, for each such country,return its name and its correspond number of customers. */
SELECT
   country.country_name AS Popular_country,
   COUNT(*) 
FROM
   customer 
   JOIN
      city 
      ON customer.cityid = city.city_id 
   JOIN
      country 
      ON city.countryid = country.country_id 
HAVING
   COUNT(country.country_name) > 20 
ORDER BY
   C_id DESC;

/*output*/
/*
+-----------------+----------+
| Popular_country | COUNT(*) |
+-----------------+----------+
| Canada          |       25 |
+-----------------+----------+
*/

/*7 The query returns the categories(names)of the longest film.*/
SELECT
   film.film_category,
   film.film_length AS duration 
FROM
   film 
WHERE
   film.film_length = 
   (
      SELECT
         MAX(film.film_length) 
      FROM
         film
   )
;
/*output*/
/*
+---------------+----------+
| film_category | duration |
+---------------+----------+
| sci-fi        |      187 |
| animated      |      187 |
| cartoon       |      187 |
| fiction       |      187 |
| Comedy        |      187 |
+---------------+----------+
*/

/*8 The query returns the movies whose total number of actors is above the average.*/
SELECT
   film.film_title AS Movie_names,
   film.no_of_actor 
FROM
   film 
WHERE
   film.no_of_actor > (
   SELECT
      AVG(film.no_of_actor) 
   FROM
      film) 
   ORDER BY
      film.film_title LIMIT 10;

/*output*/
/*
+-----------------+-------------+
| Movie_names     | no_of_actor |
+-----------------+-------------+
| avenger-2       |           9 |
| avenger-5       |           7 |
| Black Panther   |           7 |
| captain america |           7 |
| finding nemo    |           7 |
| Harry Potter-1  |           7 |
| Harry Potter-4  |           7 |
| Hulk            |           7 |
| Ice Age         |           7 |
| Infinity war    |           7 |
+-----------------+-------------+
*/

/*9 The query returns the customer who spent the most on rental movies and with his/her cust_id, first_name and the amount spent */
SELECT
   customer.C_id,
   customer.C_first_name,
   customer.Amount_spent 
FROM
   customer 
WHERE
   Amount_spent = 
   (
      SELECT
         MAX(Amount_spent) 
      FROM
         customer
   )
;

/*output*/
/*
+------+--------------+--------------+
| C_id | C_first_name | Amount_spent |
+------+--------------+--------------+
|    1 | Clay         |          300 |
+------+--------------+--------------+
*/

/*10 The query returns the first name and last name of actor having maximum number of followers*/
SELECT
   actor.a_first_name AS First_Name,
   actor.a_last_name AS Last_Name 
FROM
   actor 
   INNER JOIN
      film 
      ON actor.filmno_id = film.film_id 
   INNER JOIN
      followers 
      ON film.followingid = followers.follow_id 
HAVING
   MAX(followers.no_of_followers);

/*output*/
/*
+------------+-----------+
| First_Name | Last_Name |
+------------+-----------+
| Harry      | Potter    |
+------------+-----------+   
*/

