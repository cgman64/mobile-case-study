-- *************************************************************
-- This script creates sample database (MG)
-- Data Analyst 
-- *************************************************************

-- ********************************************
-- CREATE THE MG DATABASE
-- *******************************************

-- create the database
DROP DATABASE IF EXISTS mg;
CREATE DATABASE mg;

-- select database
USE mg;

-- create table for days: a, b and c
-- day: 11/22
CREATE TABLE a 
(
  device_id INT PRIMARY KEY,
  payment DECIMAL(9,2)
);
-- day: 11/23
CREATE TABLE b
(
  device_id INT PRIMARY KEY,
  payment DECIMAL(9,2)
);
-- day: 11/24
CREATE TABLE c
(
  device_id INT PRIMARY KEY,
  payment DECIMAL(9,2)
);

INSERT INTO a VALUES
(00001,20.20),
(00003,4.99),
(00009,12.50);

INSERT INTO b VALUES
(00001,0),
(00003,55.00),
(00009,6.50);

INSERT INTO c VALUES
(00001,9.99),
(00003,29.99),
(00009,0);

CREATE TABLE payment
(
  user_name VARCHAR(30),
  transaction_id INT,
  amount DECIMAL(9,2)
);

INSERT INTO payment VALUES
('Andy',18,9.99),
('Laurie',77,4.99),
('Ken',55,4.99),
('Andy',88,19.99),
('Andy',118,4.99),
('Laurie',102,9.99),
('Frank',217,9.99),
('Laurie',389,9.99),
('Ken',270,4.99),
('Internal_employee',217,29.99);

CREATE TABLE feed
(
  county VARCHAR(2),
  longname VARCHAR(60),
  network VARCHAR(30),
  platform VARCHAR(5),
  install_time DATETIME,
  user_id VARCHAR(60),
  paid DECIMAL(3,2)
);

INSERT INTO feed VALUES
('TR','com.thirdtime.derbyking','Organic','iOS','2016-05-04 13:36:00',
  'D5655090-33CB-49B0-A8C4-FCC493AD33F4',0),
('US','com.thirdtime.derbyking','Facebook','iOS','2016-06-17 01:57:00',
  'CBC92E11-F642-46D3-93CF-7F3A182B20BB',0),
('CN','com.spotlight.tropicalwars','Organic','iOS','2016-04-27 14:52:00',
  'B8331894-4BFC-4714-A232-FA65F4401F29',0),
('DE','com.thirdtime.derbyking','Facebook','iOS','2016-06-16 11:37:00',
  '90FCCFF2-E268-4466-9D22-99CCCEF9A4AB',0),
('FR','com.spotlight.languinis','Organic','iOS','2015-05-15 07:52:00',
  '50D23049-BAA3-4755-BECA-1D3F8EE81F80',0.65),
('BE','com.thirdtime.derbyking','Facebook','iOS','2016-06-14 17:04:00',
  'D7AFBF03-C5F6-44FF-86E7-40A9840D2023',0),
('FR','com.thirdtime.derbyking','Facebook','iOS','2016-06-17 08:44:00',
  'B1596A58-C7CD-4BDF-BEE7-7B0DBD4FDA2F',0),
('US','com.thirdtime.derbyking','Facebook','iOS','2016-06-13 01:15:00',
  '9826D3AA-5F43-416D-B440-2EC5750EB529',0);

  
  
