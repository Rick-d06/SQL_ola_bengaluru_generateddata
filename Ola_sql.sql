create database ola;
use ola;
#1. Retrieve all successful bookings:
create view Successful_Bookings as
SELECT * FROM booking
WHERE Booking_Status = 'Success';

##1. Retrieve all successful bookings:
SELECT * FROM Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
create view Average_Ride_Distance as
SELECT Vehicle_Type, avg(Ride_Distance) AS Average_ride_distance FROM booking
group by Vehicle_Type;

##2. Find the average ride distance for each vehicle type:
SELECT * FROM Average_Ride_Distance;

#3. Get the total number of cancelled rides by customers:
create view total_number_of_cancelled_rides_by_customers as
SELECT count(*) AS total_number_of_cancelled_rides_by_customers FROM booking
WHERE Booking_Status = 'Cancelled by Customer';

##3.Get the total number of cancelled rides by customers:
SELECT * FROM total_number_of_cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
create view top_5_customers AS 
SELECT Customer_ID , count(Booking_ID) AS total_rides
FROM booking
group by Customer_ID
order by total_rides DESC limit 5;

##4. List the top 5 customers who booked the highest number of rides:
SELECT * FROM top_5_customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view number_of_rides_cancelled_by_drivers AS 
SELECT count(*) AS number_of_rides_cancelled_by_drivers FROM booking
WHERE Reason_for_Cancelling_by_Driver = 'Personal & Car related issues'; 

##5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM number_of_rides_cancelled_by_drivers;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view driver_ratings AS
SELECT MAX(Driver_Ratings) AS maximum, MIN(Driver_Ratings=0) AS minimum FROM booking
WHERE Vehicle_Type = 'Prime Sedan'; 

##6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM driver_ratings;

#7. Retrieve all rides where payment was made using UPI:
create view Payment_by_UPI AS
SELECT * FROM booking 
WHERE Payment_Method = 'UPI';

##7. Retrieve all rides where payment was made using UPI:
SELECT * FROM Payment_by_UPI;

#8. Find the average customer rating per vehicle type:
create view Average_customer_rating AS
SELECT Vehicle_Type , AVG(Customer_Rating) AS Average_customer_rating FROM booking
group by Vehicle_Type;

##8. Find the average customer rating per vehicle type:
SELECT * FROM Average_customer_rating;

#9. Calculate the total booking value of rides completed successfully:
create view total_booking_value AS 
SELECT SUM(Booking_Value) AS Total_Value FROM booking
WHERE Booking_Status = 'Success';

##9. Calculate the total booking value of rides completed successfully:
SELECT * FROM total_booking_value;

#10. List all incomplete rides along with the reason: 
create view Incomplete_Rides_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason FROM booking
WHERE Incomplete_Rides = 'Yes';

#10. List all incomplete rides along with the reason: 
SELECT * FROM Incomplete_Rides_Reason;