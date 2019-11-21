-- Create tables for raw data to be loaded into
DROP TABLE airbnb;
CREATE TABLE airbnb (
airbnb_id INT PRIMARY KEY,
neighbourhood_group TEXT,
neighbourhood TEXT,
latitude INT,
longitude INT,
room_type TEXT,
price_$ INT,
number_of_reviews INT,    
listings_per_host INT
);
SELECT * FROM airbnb;
DROP TABLE property;
CREATE TABLE property (
index INT PRIMARY KEY,
neighborhood TEXT,
building_class_category TEXT,
block TEXT,
lot TEXT,
address TEXT,
zip_code INT,
total_units float,
gross_sq_feet float,    
sale_price_$ float,
sale_date TEXT
);
SELECT * FROM property;
--Change this
-- Joins tables
SELECT customer_name.id, customer_name.first_name, customer_name.last_name, customer_location.address, customer_location.us_state
FROM customer_name
JOIN customer_location
ON customer_name.id = customer_location.id;
