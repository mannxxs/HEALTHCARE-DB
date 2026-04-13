CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE Patient (
    Patient_ID INT auto_increment PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE,
    Age INT,
    Sex VARCHAR(10),
    Contact_Number VARCHAR(15)
);

CREATE TABLE Employee (
    Employee_ID INT auto_increment PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE,
    Age INT,
    Sex VARCHAR(10),
    Contact_Number VARCHAR(15)
);
CREATE TABLE Doctor (
    Employee_ID INT auto_increment PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(100),
    Qualification VARCHAR(100),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
CREATE TABLE Nurse (
    Employee_ID INT auto_increment PRIMARY KEY,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
CREATE TABLE Receptionist (
    Employee_ID INT auto_increment PRIMARY KEY,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
CREATE TABLE Room (
    Room_ID INT auto_increment PRIMARY KEY,
    Type VARCHAR(50),
    Capacity INT
);
CREATE TABLE Test_Report (
    Report_ID INT auto_increment PRIMARY KEY,
    Patient_ID INT,
    Room_ID INT,
    Test_Type VARCHAR(100),
    Result VARCHAR(255),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);
CREATE TABLE Bill (
    Bill_ID INT auto_increment PRIMARY KEY,
    Patient_ID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);
CREATE TABLE Records (
    Record_ID INT auto_increment PRIMARY KEY,
    Patient_ID INT,
    Details TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

INSERT INTO Room (Room_ID, Type, Capacity) VALUES
(1, 'Private', 1),
(2, 'General', 4),
(3, 'Luxury', 1);

INSERT INTO Patient (Patient_ID, Name, DOB, Sex, Contact_Number) VALUES
(101, 'Michael Lee', '2000-01-01', 'Male', '9876543210'),
(102, 'Sara Khan', '1998-06-14', 'Female', '9876543211');




SHOW DATABASES;
Use hospitaldb;

Show tables;
