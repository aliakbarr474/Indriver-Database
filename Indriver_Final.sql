use indriver;
create table drivers(
driverId int auto_increment,
first_name varchar(20),
last_name varchar(20),
phone_number int,
gender varchar(6),
vehicle_name varchar(10),
vehicle_number varchar(8),
city varchar(10),
rating decimal,

primary key (driverId)
);

create table passengers(
passengerId int auto_increment,
first_name varchar(20),
last_name varchar(20),
phone_number int,
gender varchar(6),
pickup_location varchar(50),
dropoff_location varchar(50),
city varchar(15),
fare int,
rating decimal,
driver_id int,

primary key (passengerId)
);

create table vehicles(
vehicleId int auto_increment,
driverId int,
vehicle_name varchar(10),
vehicle_number varchar(8),
color varchar(10),
model int,

primary key (vehicleID),
foreign key (driverId) references drivers(driverId)
);

create table rides(
rideId int auto_increment,
passengerId int,
driverId int,
start_location VARCHAR(50),
end_location VARCHAR(50),
start_time TIME,
end_time TIME,
fare int,

primary key (rideId),
foreign key (passengerId) references passengers(passengerId),
foreign key (driverId) references drivers(driverId)
);

create table fare(
fareId int auto_increment,
rideId int,
passengerId int,
driverId int,
vehicleId int,
fare int,

primary key(fareId),
foreign key (rideId) references rides(rideId),
foreign key (passengerId) references passengers(passengerID),
foreign key (driverId) references drivers(driverID),
foreign key (vehicleId) references vehicles(vehicleID)
);

use indriver;
create table ratings(
ratingId int auto_increment,
rideId INT,
passengerId INT,
driverId INT,
rating decimal,

primary key (ratingId),
FOREIGN KEY (rideId) REFERENCES rides(rideId),
FOREIGN KEY (passengerId) REFERENCES passengers(passengerId),
FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);

SELECT * FROM indriver.drivers;
insert into drivers(driverId,first_name,last_name,phone_number,gender,vehicle_name,vehicle_number,city,rating)
values ( 01 ,'Saif','Rehman', 0311456789,'Male','XLI','UET630','Karachi', 7.5),
( 02 ,'Ali','Akbar',0321657788,'Male','Alto','KHI221','Karchi', 5.5),
( 03 ,'Talha','Rauf',0334123809,'Male','Mehran','LHR301','Lahore',8),
( 04 ,'Zain','Pasha',0321436700,'Male','Vitz','KHI445','Karchi', 8),
( 05 ,'Ali','Hamza',0319956889,'Male','Indus','LHR778','Karachi', 8.5),
( 06 ,'Afeef','Ahmad',0322678902,'Male','Mehran','LHR678','Islamabad', 5.5),
( 07 ,'Hamza','Khan',0311458709,'Male','GLI','UET600','Islamabad', 7.5),
( 08 ,'Ateeq','Ali',0315756773,'Male','CD 70','ICT908','Rawalpindi', 6),
( 09 ,'Qayyum','Iqbal',0331356729,'Male','Mehran','RIA221','Rawalpindi', 6.5),
( 10 ,'Farah','Batool',0310455989,'Female','XLI','LEB036','Multan', 7.5),
( 11 ,'Suffyan','Jamal',0322956789,'Male','Wagon R','LED551','Rawalpindi', 8),
( 12 ,'Hussain','Raza',0311406080,'Male','Mehran','UET345','Islamabad', 7),
( 13 ,'Fizza','Marium',0312452722,'Female','Cultus','CSV887','Lahore', 6.5),
( 14 ,'Alishba','Khan',0310451711,'Female','Vitz','BQP897','Lahore', 5.5),
( 15 ,'Abdullah','Azhar',0311416712,'Male','Mehran','LED009','Multan', 5),
( 16 ,'Talha','Anwar',0312426388,'Male','Indus','LEB452','Islamabad', 8),
( 17 ,'Basit','Bajwa',0334454784,'Male','XLI','ICT666','Islamabad', 9),
( 18 ,'Iqra','Nasir',0311356785,'Female','GLI','CSV336','Lahore', 7),
( 19 ,'Zahid','Tanveer',0311445668,'Male','Cultus','LEB558','Multan', 9),
( 20 ,'Haris','Bashir',0321456779,'Male','Alto','KHI908','Rawalpindi', 6),
( 21 ,'Hammad','Naqvi',0331459778,'Male','Indus','ICT110','Lahore', 8),
( 22 ,'Ahmad','Aziz',0300456321,'Male','Vitz','ICT931','Islamabad', 7.5),
( 23 ,'Ali','Faiz',0311321789,'Male','Wagon R','KHI906','Karchi', 8.5),
( 24 ,'Yousuf','Abbas',0311456987,'Male','Cultus','LEB235','Lahore', 9),
( 25 ,'Nadia','Khan',0311456000,'Female','Alto','ICT679','Lahore', 5);

SELECT * FROM indriver.passengers;
insert into passengers(passengerId,first_name,last_name,phone_number,gender,pickup_location, dropoff_location,city,fare,rating,driver_id)
values ( 10 , 'Altaf', 'Hussain', 0332 , 'male' ,'Gulshan Iqbal' , 'DHA', 'Karachi', 300 , 4 , 01),
( 11 , 'Rida', 'Rana', 0331 , 'Female' ,'Emaar' , 'bukhari commercial', 'Karachi', 400 , 5 , 02),
( 12 , 'Fatima', 'Raza', 0320 , 'Female' ,'MA Alam road' , 'DHA', 'Lahore', 600 , 5 , 03),
( 13 , 'Manahil', 'Bashir', 0335 , 'Female' ,'Clifton' , 'Phase 6', 'Karachi', 150 , 3 , 04),
( 14 , 'Umer', 'Durrani', 0335 , 'male' ,'Food Street' , 'PNEC', 'Islamabad', 500 , 4 , 05),
( 15 , 'tariq', 'Hussain', 0345, 'male' ,'Behria' , 'golimar chowk', 'Rawalpindi', 300 , 5 , 06),
( 16, 'Ayesha', 'Ishaque', 0356 , 'Female' ,'Dolmen mall' , 'DHA', 'Karachi', 200 , 5 , 07),
( 17 , 'Fahad', 'Raza', 0344, 'male' ,'f6' , 'h-12 NUST', 'Islamabad', 500 , 4 , 08),
( 18 , 'Asif', 'Ahmed', 0332, 'male' ,'H-12 NUST' , 'G-10', 'Islamabad', 200 , 5 , 09),
( 19 , 'Duaa', 'Hasan', 0311, 'Female' ,'Hill Park' , 'IBA', 'Karachi', 500 , 3 , 10),
( 20 , 'Zeemal', 'Karim', 0334, 'Female' ,'Altamsh' , 'bath island', 'Karachi', 100 , 4 , 11),
( 21 , 'Ali', 'Akbar', 0332, 'male' ,'Aku' , 'PNEC', 'Lahore', 500 , 4 , 12),
( 22 , 'Ali', 'Hamza', 0334, 'male' ,'Altamsh' , 'Clifton', 'Karachi', 200 , 2 , 13),
( 23 , 'Raza', 'Hussain', 0322, 'male' ,'Lums' , 'Raya', 'Lahore', 300 , 4 , 14),
( 24 , 'Akbar', 'Tariq', 0336, 'male' ,'F-11' , 'Pindi', 'Rawalpindi', 150 , 5 , 15),
( 25 , 'Aiza', 'Ahmed', 0356, 'female' ,'delhi gate' , 'ichra', 'Lahore', 300 , 3 , 16),
( 26 , 'Ahmed', 'Yahya', 0312, 'male' ,'Zamzama' , 'Gulf', 'Karachi', 100 , 5 , 17),
( 27 , 'Yasir', 'Hussain', 0332, 'male' ,'bath Island' , 'DHA', 'Lahore', 80 , 5 , 18),
( 28 , 'zain', 'faraz', 0345, 'male' ,'Cantt' , 'LUMS', 'Rawalpindi', 500 , 3 , 19),
( 29 , 'Talha', 'Rauf', 0332, 'male' ,'Cantt' , 'Sunset point', 'Islamabad', 200 , 5 , 20),
( 30 , 'sana', 'aslam', 0390, 'Female' ,'Gulshan Iqbal' , 'DHA', 'Karachi', 600 , 3 , 21),
( 31 , 'Uneeza', 'Hakim', 0330, 'female' ,'UET' , 'DHA', 'Lahore', 300 , 2 , 22),
( 32 , 'Owais', 'Ahmed', 0335, 'male' ,'NUST' , 'F-10', 'Islamabad', 100 , 4 , 23),
( 33 , 'Jamal', 'Hussain', 0367, 'male' ,'f-8' , 'Behria', 'Rawalpindi', 400 , 5 , 24),
( 34 , 'Ahmed', 'chaudhry', 0337, 'male' ,'fortress' , 'DHA', 'lahore', 500 , 2 , 25);

SELECT * FROM indriver.vehicles;
insert into vehicles(vehicleId, driverId, vehicle_name, vehicle_number, color, model)
values (11, 01,'XLI','UET630', 'Black', 2016),
(12, 02 ,'Alto','KHI221','White', 2013),
(13, 03, 'Mehran','LHR301','Grey', 2011 ) ,
(14, 04, 'Vitz','KHI445', 'Black', 2017 ),
(15, 05, 'Indus','LHR778', 'White', 2003),
(16, 06, 'Mehran','LHR678', 'White', 2005),
(17, 07, 'GLI','UET600', 'Golden', 2019),
(18 ,08,'CD 70','ICT908','Black', 2011),
(19, 09, 'Mehran','RIA221', 'Silver', 2013 ),
(20, 10, 'XLI','LEB036', 'Wine Red', 2020),
(21, 11, 'Wagon R','LED551','Silver', 2021),
(22, 12, 'Mehran','UET345','Green', 2009),
(23, 13, 'Cultus','CSV887','White',2006),
(24, 14, 'Vitz','BQP897','Red',2023 ),
(25, 15, 'Mehran','LED009','Green',2006),
(26, 16, 'Indus','LEB452', 'Black', 2001),
(27, 17, 'XLI','ICT666', 'Black', 2023),
(28, 18, 'GLI', 'CSV336', 'White', 2021),
(29, 19, 'Cultus','LEB558','Blue', 2017),
(30, 20, 'Alto','KHI908', 'Blue', 2020),
(31, 21, 'Indus','ICT110', 'White', 2004),
(32, 22, 'Vitz','ICT931', 'Silver', 2023),
(33, 23, 'Wagon R','KHI906', 'Golden', 2016),
(34, 24, 'Cultus','LEB235', 'White', 2015),
(35, 25, 'Alto','ICT679', 'Black', 2002);

SELECT * FROM indriver.rides;
insert into rides(rideId, passengerId, driverId, start_location, end_location, start_time, end_time, fare)
values     (101, 10, 1, 'Gulshan Iqbal', 'DHA', '9:00', '09:30', 300),
    (102, 11, 2, 'Emaar', 'Bukhari Commercial', '10:00', '10:20', 400),
    (103, 12, 3, 'MA Alam Road', 'DHA', '08:00', '8:40', 600),
    (104, 13, 4, 'Clifton', 'Phase 6', '7:30', '7:50', 150),
    (105, 14, 5, 'Food Street', 'PNEC', '12:00', '12:30', 500),
    (106, 15, 6, 'Behria', 'Golimar Chowk', '11:00', '11:20', 300),
    (107, 16, 7, 'Dolmen Mall', 'DHA', '3:00', '3:20', 200),
    (108, 17, 8, 'F6', 'H-12 NUST', '4:00', '4:45', 500),
    (109, 18, 9, 'H-12 NUST', 'G-10', '5:00', '5:30', 200),
    (110, 19, 10, 'Hill Park', 'IBA', '6:00', '6:45', 500),
    (111, 20, 11, 'Altamsh', 'Bath Island', '4:00', '4:10', 100),
    (112, 21, 12, 'Aku', 'PNEC', '11:20', '11:00', 500),
    (113, 22, 13, 'Altamsh', 'Clifton', '9:00', '9:20', 200),
    (114, 23, 14, 'Lums', 'Raya', '3:00', '3:30', 300),
    (115, 24, 15, 'F-11', 'Pindi', '10:00', '10:15', 150),
    (116, 25, 16, 'Delhi Gate', 'Ichra', '2:00', '2:45', 300),
    (117, 26, 17, 'Zamzama', 'Gulf', '3:20', '3:50', 100),
    (118, 27, 18, 'Bath Island', 'DHA', '06:00', '06:15', 80),
    (119, 28, 19, 'Cantt', 'LUMS', '07:00', '07:30', 500),
    (120, 29, 20, 'Cantt', 'Sunset Point', '08:00', '08:30', 200),
    (121, 30, 21, 'Gulshan Iqbal', 'DHA', '08:45', '09:30', 600),
    (122, 31, 22, 'UET', 'DHA', '10:00', '10:20', 300),
    (123, 32, 23, 'NUST', 'F-10', '11:00', '11:10', 100),
    (124, 33, 24, 'F-8', 'Behria', '12:00', '12:30', 400),
    (125, 34, 25, 'Fortress', 'DHA', '12:00', '12:30', 500);

SELECT * FROM indriver.fare;
insert into fare(fareId, rideId, passengerId, driverId, vehicleId, fare)
values (200, 101, 10, 1, 11, 300),
    (201, 102, 11, 2, 12, 400),
    (202, 103, 12, 3, 13, 600),
    (203, 104, 13, 4, 14, 150),
    (204, 105, 14, 5, 15, 500),
    (205, 106, 15, 6, 16, 300),
    (206, 107, 16, 7, 17, 200),
    (207, 108, 17, 8, 18, 500),
    (208, 109, 18, 9, 19, 200),
    (209, 110, 19, 10, 20, 500),
    (210, 111, 20, 11, 21, 100),
    (211, 112, 21, 12, 22, 500),
    (212, 113, 22, 13, 23, 200),
    (213, 114, 23, 14, 24, 300),
    (214, 115, 24, 15, 25, 150),
    (215, 116, 25, 16, 26, 300),
    (216, 117, 26, 17, 27, 100),
    (217, 118, 27, 18, 28, 80),
    (218, 119, 28, 19, 29, 500),
    (219, 120, 29, 20, 30, 200),
    (220, 121, 30, 21, 31, 600),
    (221, 122, 31, 22, 32, 300),
    (222, 123, 32, 23, 33, 100),
    (223, 124, 33, 24, 34, 400),
    (224, 125, 34, 25, 35, 500);

SELECT * FROM indriver.ratings;
insert into ratings(ratingId, rideId, passengerId, driverId, rating)
values    (300, 101, 10, 1, 7.5),
    (301, 102, 11, 2, 5.5),
    (302, 103, 12, 3, 8.0),
    (303, 104, 13, 4, 8.0),
    (304, 105, 14, 5, 8.5),
    (305, 106, 15, 6, 5.5),
    (306, 107, 16, 7, 7.5),
    (307, 108, 17, 8, 6.0),
    (308, 109, 18, 9, 6.5),
    (309, 110, 19, 10, 7.5),
    (310, 111, 20, 11, 8.0),
    (311, 112, 21, 12, 7.0),
    (312, 113, 22, 13, 6.5),
    (313, 114, 23, 14, 9.0),
    (314, 115, 24, 15, 9.0),
    (315, 116, 25, 16, 5.0),
    (316, 117, 26, 17, 5.0),
    (317, 118, 27, 18, 5.0),
    (318, 119, 28, 19, 3.0),
    (319, 120, 29, 20, 5.0),
    (320, 121, 30, 21, 7.0),
    (321, 122, 31, 22, 2.0),
    (322, 123, 32, 23, 4.0),
    (323, 124, 33, 24, 5.0),
    (324, 125, 34, 25, 2.0);