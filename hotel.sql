show databases;
create database hotel;
show databases;

#using database hotel
use hotel;

#created customer_table
create table customer_table(customer_id int PRIMARY KEY, name varchar(20),
 contact_info varchar(20), id_proof varchar(20), language_pref varchar(20));
 
#created room_table
 create table room_table(room_id int PRIMARY KEY, room_type varchar(20),
 price_per_night int, availability varchar(20), dynamic_price int);
 
 #created booking_table
create table booking_table(booking_id int PRIMARY KEY, customer_id int, room_id int,
 check_in_date DATE,check_out_date DATE, status varchar(20), 
 FOREIGN KEY (customer_id) REFERENCES customer_table(customer_id),
 FOREIGN KEY (room_id) REFERENCES room_table(room_id));
 
 #created payment table
 create table payment_table(payment_id int PRIMARY KEY, booking_id int,
 amount_paid int, payment_date DATE , payment_mode varchar(20)); 
 
 #create staff_table
 create table staff_table(staff_id int PRIMARY KEY, name varchar(20),
 role varchar(20), contact_info varchar(20), hire_date datetime, salary int);
 
 # create audit_table
 create table audit_table(log_id int PRIMARY KEY, operation varchar(20), staff_id int,
 time_stamp datetime,foreign key(staff_id) references staff_table(staff_id));
 
 #created tables schema
 desc customer_table;
 desc room_table;
 desc booking_table;
 desc payment_table;
 desc staff_table;
 desc audit_table;
 
 #inserting values into customer_table
 INSERT INTO customer_table VALUES
(1, 'Alice', '9876543210', 'Aadhar', 'English'),
(2, 'Bob', '9123456780', 'Passport', 'Hindi'),
(3, 'Charlie', '9988776655', 'Driving License', 'Tamil'),
(4, 'David', '9001122334', 'Aadhar', 'Telugu'),
(5, 'Eva', '9112233445', 'Passport', 'English'),
(6, 'Farhan', '9556677889', 'PAN', 'Hindi'),
(7, 'Grace', '9667788990', 'Aadhar', 'Kannada'),
(8, 'Hari', '9788899001', 'Passport', 'Malayalam'),
(9, 'Ivy', '9899001122', 'Voter ID', 'English'),
(10, 'Jack', '9344556677', 'PAN', 'Tamil'),
(11, 'Kavya', '9009988776', 'Aadhar', 'Hindi'),
(12, 'Liam', '9112233456', 'Passport', 'English');

#inserting values into room_table
INSERT INTO room_table VALUES
(101, 'Single', 2000, 'Available', 2100),
(102, 'Double', 3000, 'Booked', 3300),
(103, 'Suite', 5000, 'Available', 5500),
(104, 'Single', 1900, 'Available', 2000),
(105, 'Double', 2800, 'Booked', 2900),
(106, 'Suite', 5200, 'Available', 5600),
(107, 'Single', 2000, 'Available', 2100),
(108, 'Double', 3100, 'Booked', 3200),
(109, 'Suite', 5400, 'Available', 5800),
(110, 'Single', 1800, 'Booked', 2000),
(111, 'Double', 3000, 'Available', 3200),
(112, 'Suite', 5500, 'Available', 6000);

#inserting values into booking_table
INSERT INTO booking_table VALUES
(201, 1, 101, '2025-04-10', '2025-04-12', 'Confirmed'),
(202, 2, 102, '2025-04-11', '2025-04-13', 'Completed'),
(203, 3, 103, '2025-04-12', '2025-04-14', 'Cancelled'),
(204, 4, 104, '2025-04-15', '2025-04-17', 'Confirmed'),
(205, 5, 105, '2025-04-18', '2025-04-19', 'Completed'),
(206, 6, 106, '2025-04-20', '2025-04-22', 'Pending'),
(207, 7, 107, '2025-04-23', '2025-04-25', 'Confirmed'),
(208, 8, 108, '2025-04-26', '2025-04-28', 'Completed'),
(209, 9, 109, '2025-04-29', '2025-05-01', 'Cancelled'),
(210, 10, 110, '2025-05-02', '2025-05-04', 'Confirmed'),
(211, 11, 111, '2025-05-05', '2025-05-07', 'Pending'),
(212, 12, 112, '2025-05-08', '2025-05-10', 'Confirmed');

#inserting values into payment_table
INSERT INTO payment_table VALUES
(301, 201, 4200, '2025-04-09', 'UPI'),
(302, 202, 3300, '2025-04-10', 'Credit Card'),
(303, 203, 5500, '2025-04-11', 'Cash'),
(304, 204, 4000, '2025-04-14', 'Debit Card'),
(305, 205, 2900, '2025-04-17', 'UPI'),
(306, 206, 5600, '2025-04-19', 'Net Banking'),
(307, 207, 4100, '2025-04-22', 'Cash'),
(308, 208, 3200, '2025-04-25', 'UPI'),
(309, 209, 5800, '2025-04-28', 'Credit Card'),
(310, 210, 2000, '2025-05-01', 'Debit Card'),
(311, 211, 3200, '2025-05-04', 'UPI'),
(312, 212, 6000, '2025-05-07', 'Cash');

#inserting values into staff_table
INSERT INTO staff_table VALUES
(1, 'Ravi', 'Receptionist', '9090909090', '2023-01-15 09:00:00', 25000),
(2, 'Anita', 'Manager', '8080808080', '2022-10-01 10:30:00', 45000),
(3, 'Kiran', 'Chef', '7070707070', '2021-07-25 08:00:00', 30000),
(4, 'Meena', 'Housekeeping', '6060606060', '2024-03-10 07:45:00', 20000),
(5, 'John', 'Receptionist', '5050505050', '2023-05-18 09:15:00', 26000),
(6, 'Priya', 'Manager', '4040404040', '2020-12-01 11:00:00', 47000),
(7, 'Rahul', 'Chef', '3030303030', '2023-11-12 08:30:00', 31000),
(8, 'Sneha', 'Housekeeping', '2020202020', '2022-06-22 06:45:00', 19000),
(9, 'Ajay', 'Receptionist', '1010101010', '2021-09-19 10:00:00', 25500),
(10, 'Divya', 'Manager', '9999999999', '2024-01-05 12:00:00', 46000);

#inserting values into audit_table
INSERT INTO audit_table VALUES
(1, 'INSERT', 1, '2025-04-10 09:00:00'),
(2, 'UPDATE', 2, '2025-04-11 10:00:00'),
(3, 'DELETE', 3, '2025-04-12 11:00:00'),
(4, 'INSERT', 4, '2025-04-13 12:00:00'),
(5, 'UPDATE', 5, '2025-04-14 13:00:00'),
(6, 'INSERT', 6, '2025-04-15 14:00:00'),
(7, 'DELETE', 7, '2025-04-16 15:00:00'),
(8, 'UPDATE', 8, '2025-04-17 16:00:00'),
(9, 'INSERT', 9, '2025-04-18 17:00:00'),
(10, 'DELETE', 10, '2025-04-19 18:00:00');

#veiwing all the tables
select * from customer_table;
select * from room_table;
select * from booking_table;
select * from payment_table;
select * from staff_table;
select * from audit_table; 
#finding id proof of customer whose is aadhar
select * from customer_table where id_proof="Aadhar";
#sorting the price of the room_types in descending order
select room_type,dynamic_price from room_table order by dynamic_price desc;
#changing the data type of amount_paid column in payment_table to decimal
alter table payment_table modify column amount_paid DECIMAL(10,2);
select amount_paid from payment_table;
#to find the number of days a custom
select (check_out_date - check_in_date)as no_of_days,customer_id,
(select name from customer_table where customer_table.customer_id=booking_table.customer_id) as name from booking_table;

#adding column staff_id to room_table
alter table room_table add staff_id int;
alter table room_table add name varchar(20);

#disabiling safe update mode
SET SQL_SAFE_UPDATES = 0;

#appoint staff with highest pay to suite room_type
update room_table set staff_id=(select staff_id from staff_table order by salary desc limit 1) where room_type="suite";
#displaying name of the staff a swell
SELECT 
    r.room_id, 
    r.room_type, 
    r.staff_id, 
    s.name AS staff_name
FROM room_table r
LEFT JOIN staff_table s ON r.staff_id = s.staff_id
WHERE r.room_type = 'suite';

#update room_table set name=(select name from staff_table)
select * from room_table;

#updating the price of dynamic price based on the peak,mid and off season
update room_table set dynamic_price=price_per_night*
case when month(current_date) in (12,4,8) then 1.2
when month(current_date) in (5,6,10) then 1.1
else 1.0
end;


select sum(amount_paid) as total_amount, month(payment_date) from payment_table 
group by month(payment_date);

#to find the customer details whose april month bookins are completed or confirmed
select * from customer_table where customer_id in
(select customer_id from booking_table where month(check_in_date)=4 and status='Confirmed' or status='Completed');

update room_table set staff_id=(select staff_id from staff_table order by hire_date asc limit 1) where room_type='Single';

update room_table set staff_id=(select staff_id from staff_table order by hire_date asc limit 1 offset 1) where room_type='Double';

UPDATE room_table r
JOIN staff_table s ON r.staff_id = s.staff_id
SET r.name = s.name
WHERE r.staff_id IS NOT NULL;

select *from room_table;

DELIMITER //

CREATE TRIGGER log_staff_insert
AFTER INSERT ON staff_table
FOR EACH ROW
BEGIN
  INSERT INTO audit_table(operation, staff_id, time_stamp)
  VALUES('INSERT', NEW.staff_id, NOW());
END;

DELIMITER ;





 