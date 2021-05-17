---UC1(Creating a Database)---
CREATE DATABASE AddressBookSystem;   --Create database
USE AddressBookSystem;   --To use payroll_service Database

---UC2(CREATING TABLE)---
CREATE TABLE AddressBookService
(
FirstName varchar(100),
LastName varchar(100),
City varchar(250),
StateName varchar(250),
Zip int,
Phone varchar(250),
Email varchar(250)
);
select * from AddressBookService;

---UC3(INSERTING CONTACT IN ADDRESSBOOK)---
INSERT INTO AddressBookService VALUES('Bishal','Pradhan','Bhubaneswar','Odisha','762012','9439433505','pbishal60@gmail.com');
INSERT INTO AddressBookService VALUES('Shailesh','Satapathy','Bhanjanagar','Odisha','763535','9438566505','shailesh9@gmail.com');
INSERT INTO AddressBookService VALUES('Prateek','Dash','Puri','Odisha','700585','7751085656','prateek1997@gmail.com');
INSERT INTO AddressBookService VALUES('Niraj','Kumar','Jamshedpur','Jharkhand','762018','9439635356','niraj70@gmail.com');
INSERT INTO AddressBookService VALUES('Subhrakant','Dash','Bhubaneswar','Odisha','751030','9865455858','dsubhra@gmail.com');
INSERT INTO AddressBookService VALUES('Prabhat','Kumar','Patna','Bihar','755686','7008525456','prabhat07@gmail.com');
SELECT * FROM AddressBookService;

---UC4(Editing Details Using Name)---
UPDATE AddressBookService SET Phone='8280245024' WHERE FirstName='Prabhat';
SELECT * FROM AddressBookService;

---UC5(Deleating a person by using first name)---
DELETE FROM AddressBookService WHERE FirstName= 'Subhrakant';
SELECT * FROM AddressBookService;

---UC6(Retrieving Data by City or State)---
Select * from AddressBookService WHERE City='Bhubaneswar' or StateName='Odisha';
Select * from AddressBookService WHERE City='Bhubaneswar';

---UC7(Size of Address book by City or State)---
Select COUNT(City) as City_Count FROM AddressBookService;
Select COUNT(StateName) as State_Count FROM AddressBookService

---UC8(Sorting data Alphabetically by person name)---
SELECT * FROM AddressBookService ORDER BY(FirstName);

---UC9(Ability to identify each Address Book with name and Type)---
alter table AddressBookService  add addressBook_Name varchar(30),addressBook_Type varchar(30);
update AddressBookService set addressBook_Name = 'family address book', addressBook_Type = 'Family' where FirstName='Niraj';
update AddressBookService set addressBook_Name = 'friends address book', addressBook_Type = 'Friends' where FirstName='Prabhat';
update AddressBookService set addressBook_Name = 'friends address book', addressBook_Type = 'Friends' where FirstName='Shailesh';
update AddressBookService set addressBook_Name = 'friends address book', addressBook_Type = 'Friends' where FirstName='Prateek';
select * from AddressBookService;

---UC10(Ability to get number of contact persons using count type)---
select count(addressBook_Type) from AddressBookService where addressBook_Type = 'Family';

---UC11(Ability to add person to both Friend and Family)---
INSERT INTO AddressBookService VALUES('Niraj','Kumar','Jamshedpur','Jharkhand','762018','9439635356','niraj70@gmail.com',' address book','Friends');
select * from AddressBookService;


