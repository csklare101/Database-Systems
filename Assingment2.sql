/* 	
	YourName 
	CSC 355 
	402T
	Assignment 2
	Sep 27, 2021 
*/
drop table ASSINGMENT;
drop table ROUTE;
drop table TRUCK;

create table TRUCK
(
	TruckID char(3),
	Company varchar(50),
	Year NUMBER(4,1),
	primary key(TruckID)
);

create table ROUTE
(
	RouteID char(4),
	FromCity varchar(50),
	toCity varchar(50),
	TruckID char(3),
	primary key(RouteID),
	foreign key(TruckID) references TRUCK(TruckID)
);

create table ASSINGMENT
(
	RouteID	char(4),
	DriverID char(7),
	DriverName varchar(50),
	DepaurtureDate DATE,
	primary key(RouteID, DriverID),
	foreign key(RouteID) references ROUTE(RouteID)
);

insert into TRUCK (TruckID, Company, Year) values (111, 'Ford', 1);
insert into TRUCK (TruckID, Company, Year) values (222, 'Toyota', 2);
insert into TRUCK (TruckID, Company, Year) values (333, 'Ram', 2);
insert into TRUCK (TruckID, Company, Year) values (444, 'Subaru', 3);

insert into ROUTE (RouteID, FromCity, toCity, TruckID) values (1111, 'Chicago', 'New York', 111);
insert into ROUTE (RouteID, FromCity, toCity, TruckID) values (2222, 'Denver', 'Los Angeles', 111);
insert into ROUTE (RouteID, FromCity, toCity, TruckID) values (3333, 'Washington D.C.', 'Philadelphia', 222);
insert into ROUTE (RouteID, FromCity, toCity, TruckID) values (4444, 'Houston', 'Phoenix', 333);
insert into ROUTE (RouteID, FromCity, toCity, TruckID) values (5555, 'Dallas', 'San Jose', 444);

insert into ASSINGMENT (RouteID, DriverID, DriverName, DepaurtureDate) values (1111, 1111111, 'Carson', TO_DATE('2021-03-10',' YYYY-MM-DD'));
insert into ASSINGMENT (RouteID, DriverID, DriverName, DepaurtureDate) values (2222, 1111111, 'Carson', TO_DATE('2021-03-12',' YYYY-MM-DD'));
insert into ASSINGMENT (RouteID, DriverID, DriverName, DepaurtureDate) values (1111, 2222222, 'Jason', TO_DATE('2021-03-21',' YYYY-MM-DD'));
insert into ASSINGMENT (RouteID, DriverID, DriverName, DepaurtureDate) values (3333, 3333333, 'Ian', TO_DATE('2021-04-05',' YYYY-MM-DD'));
insert into ASSINGMENT (RouteID, DriverID, DriverName, DepaurtureDate) values (4444, 4444444, 'Ben', TO_DATE('2021-04-30',' YYYY-MM-DD'));
insert into ASSINGMENT (RouteID, DriverID, DriverName, DepaurtureDate) values (5555, 5555555, 'Luke', TO_DATE('2021-04-18',' YYYY-MM-DD'));

SELECT * FROM TRUCK;
SELECT * FROM ROUTE;
SELECT * FROM ASSINGMENT;

commit;