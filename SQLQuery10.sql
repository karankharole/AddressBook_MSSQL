create database AddressBook_serviceDB;
use AddressBook_serviceDB;


--UC2 add Addressbook table--
create table AddressBook(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
select * from AddressBook;

--UC3 insert contact details into table--
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('karan','kharole','amt','AMT','Mah',444601,9689696292,'kk@gmail.com'),
('om','kumar','nag','nag','mah',444001,6784736677,'OK@gmail.com'),
('ruchita','patil','mum','mah','mah',490020,9675874647,'RP@gmail.com');
select * from  AddressBook;

--UC4 edit contact by person's name--
update AddressBook set PhoneNumber=786868668 where FirstName='karan';
select * from AddressBook;

--UC5 delete existing contact using name--
delete AddressBook where FirstName='om';
select * from AddressBook;

--UC6 find person belonging to city or state--
select * from AddressBook where City = 'mah' or State = 'amt'; 

--UC7 size of addressbook--
select COUNT(*) as StateCount, State from AddressBook group by State;
select COUNT(*) as StateCount, City from AddressBook group by City;

--UC8 sort entries by name alphbatically--
select * from AddressBook order by FirstName;

--UC9 Identify each addressboook with name and type--
alter table Addressbook add ContactType varchar(100) not null default 'Friend';
update AddressBook set ContactType = 'Family' where FirstName = 'ruchita';
select * from AddressBook;

--UC10 get contact count by type--
select COUNT(*) as Type, ContactType from AddressBook group by ContactType;



