 


GISMA University of Applied Sciences
B103E
Databases and Big data
Topic: Healthcare system

By: Manjot Singh
 

Contents
INTRODUCTION	2
SYSTEM DESIGN ( Defining Entities, attributes and relationship )	2
IMPLEMENTATION	5
NORMALIZATION	7
CHALLENGES AND SOLUTIONS	8
CONCLUSION	9
REFERENCES	10

Figure 1 Source: GeeksforGeeks (2025)	4
Figure 2Creating Database	5
Figure 3 Formation of Tables	5
Figure 4 Forming tables	6
Figure 5 Forming tables	6
Figure 6 Table Employee	7
Figure 7 Table employee	7
Figure 8 1NF	8
 
INTRODUCTION
A hospital database management system is an organized digital framework created to store, handle, and protect all clinical and administrative information produced within a healthcare institution. It functions as the foundation of a contemporary hospital management system database, linking patient records, physician notes, diagnostic reports, billing information, scheduling data, and operational logs into one centralized framework. An effectively structured hospital management system database schema guarantees data precision, minimizes redundancy, and facilitates immediate access to essential information throughout departments said by Ryan Tanner (2026).
Ryan Tanner (2026) said that these systems generally feature interconnected database tables for hospital management that encompass patients, visits, procedures, pharmacy stock, lab workflows, and insurance claims. A contemporary hospital management system database design enhances care coordination, compliance reporting, and decision-making by substituting manual record-keeping and disjointed legacy systems. Regardless of whether it's deployed on-premise, in the cloud, or within a hybrid setup, a hospital database management system allows hospitals to grow effectively, uphold data integrity, and optimize everyday clinical and administrative processes.
The key objective of this process is to design and implement a comprehensive database system using SQL. The goal is to build a relational database that efficiently manages structured data for a real-world application and showing to the world that how the health care systems records and maintain patient records, appointments and medical staff information.

SYSTEM DESIGN ( Defining Entities, attributes and relationship )
To create an Entity-Relationship Diagram (ER Diagram) for a Hospital Management System (HMS) based on the given entities provided by GeeksforGeeks (2025), we will concentrate on these specific requirements:
Patient Management: The system must enable the registration of patients and the handling of their information, including aspects like demographics, medical history, and current health status.
Doctor Management: The system must include a doctor directory feature where information like specialties, contact details, and availability of doctors can be established.
Room Oversight: The system must aid the department in allocating and evaluating rooms within the hospital, especially those that are unoccupied or available at the moment.
Nurse Management: The application must include essential features for managing nurse data, such as details regarding their departments, shifts, and contact information.
Sure! Please provide the text you'd like me to paraphrase.
Test Report Management: The system offers a method for creating, storing, and accessing test reports for patients, which includes comprehensive details about the tests, outcomes, and dates.
Record Management: The system must monitor hospital operations within their records. Every entry must possess a distinct identification number for recognition.
Billing: The system will manage billing information for services provided to patients, encompassing all tasks like generating bills, monitoring payments, and managing insurance information.
Receptionist Oversight: The system will incorporate features capable of managing a receptionist's duties within the hospital. Receptionists must be capable of accessing pertinent patient information and arranging appointment schedules as per said by GeeksforGeeks (2025).
So here are the entities and attributes for a health care system;
1.Patient
Name: Name of the patient
DOB: Year of born
Sex: Male or Female
Contact Number: Any mobile phone or telephone number
Age: How old the person is
Patient-ID: A unique identification id
2. Employee
Name: Name of the employee
DOB: Year of born
Sex: Male or Female
Contact Number: Any mobile phone or telephone number
Age: Age of employee
Employee-ID: Employee identification id
3. Doctor
Name: name of the doctor
Department: The field in which the doctor works
Qualification: study which the doctor has done previous.
Employee-ID: Foreign key referencing Employee.
4. Nurse
Employee-ID: Foreign key referencing Employee.
5. Room
Room-ID: Room number in which the patient has to be placed in.
Type: type of room that is it luxury, private or general.
Capacity: That how many patients can be placed in one room
6. Receptionist
Employee-ID: Foreign key referencing Employee.
7. Test Report
Room-ID: Primary key
Patient-ID: Foreign key referencing patient
Test type: like which test has been taken at that time
Result: Final result after done the testing of the patient
8. Bill
Bill-ID: Unique number for each patient after getting discharged or getting all the treatment.
Patient-ID: Foreign key referencing patient.
Amount: Money that has to be paid to the hospital
9. Records
Record-ID: previous patients all records and information

So here is the that how to relationship works as said by GeeksforGeeks (2025) in the hospital; Patient meets with doctor, Employees fulfil the roles of nurse, doctor, and receptionist at the hospital. The patient settles invoices for healthcare services. Nurse oversees rooms. Patients are allocated rooms throughout their time at the hospital. The receptionist keeps hospital records updated. The patient possesses a test report.

ERM diagram;
 
Figure 1 Source: GeeksforGeeks (2025)

IMPLEMENTATION
So, from now we are going to create a database including the primary keys, foreign keys and the remaining necessary constraints. The healthcare database implementation strategy starts with the development of a specific database through a language called as SQL. To create a database, one must make a command that is CREATE DATABASE which can we also see in the underlying workbench screenshots. Furthermore, after creating the database, you can start creating  your tables just like I have made in these screen shots. To start with the tables, one must enter the command that is CREATE TABLE and further name the table that you want to create, then further add the elements that you want to show in your table such as Patient-ID, Name and Age (INT). Just to make sure here INT means integer from which only the number digits can be selected from the age. 

 
Figure 2Creating Database

 
Figure 3 Formation of Tables
 
Figure 4 Forming tables


 
Figure 5 Forming tables

After you are done with all these tables now type the command SHOW DATABSES and the command USE and the name of the database that you have added and then run these, what you can see is that your database is formed and also to check the tables now run the command SHOW Tables and after that you can see that your tables have been made which you can see in the underlying screen shots. For example, when I run SHOW Tables of the table employee what I can see that is that my table employee is formed and just as to see all the tables just run the command and select the table that you want to see.

 
Figure 6 Table Employee

 
Figure 7 Table employee


NORMALIZATION

Normalization is also used to have a structured database and just to remove redundancy. The database satisfies First Normal Form (1NF) where it removes the repeating groups and encompasses all the characteristics of atomic values
 
Figure 8 1NF

Second normal from (2NF) is the form that is obtained through the elimination of the partial dependencies. All the other attributes in every table are completely dependent on the primary key.

The Third Normal (3NF) is obtained by the remove of transitive dependencies. The non-key attributes are not dependent on non-key attributes and thereby it eliminates redundancy and enhances data integrity. As Sianturi et al. (2025) argue, normalization provides better performance to a database and streamlines the maintenance process, which is an important factor in the design of relational database

CHALLENGES AND SOLUTIONS

A major issue that was witnessed in the process of development was the associated errors with foreign key constraints. These were the errors that were made when one tried to remove a record off of the table and yet there were relationships to dependent tables like Bill and Records. This problem exists because of referential integrity that makes sure that relationships between tables are also consistent. Mooder (2022) stated that referential integrity is vital in relational databases to ensure that the data is accurate and consistent. It was solved by dropping dependent records in a proper sequence beginning with child tables and proceeding to parent tables. Also, the research of cascading deletes was considered as another variant of automatizing this process.
The second problem that I have faced is of Data Redundancy and Normalization. First of all, they had a threat of having the same data(IN which is redundancy) when they stored the information about products directly in the table. This might result in duplication and inconsistencies and especially when there are several products in a given order. In order to solve this problem, the normalization methods have been considered by adding a table. Lubis et al. (2023) suggest that normalization eliminates redundancy, and it enhances database efficiency. This solution made sure that every piece of data is stored in one place which will increase consistency and maintainability of the database system.

CONCLUSION
The project was successfully done as it was planned and used SQL to determine and put into practice a relational database system based on heath care system. The database was designed in such a manner to handle the major entities such as patients, employee, doctor, records . Different SQL function has been used such as insertion and update. Mahdiania et al. (2022) state that with well-designed relational databases effective data management and sound decision-making becomes possible. On the whole, the project accentuates the need of the systematic database development and demonstrates the practical implementation of the SQL in a real-life environment.















 
REFERENCES

Ryan Tanner (Apr 7,2026) hospital-database-management-system, https://www.larksuite.com/en_us/blog/hospital-database-management-system
GeeksforGeeks (23 July,2025) how-to-design-er-diagram-for-a-hospital-management-system, https://www.geeksforgeeks.org/sql/how-to-design-er-diagram-for-a-hospital-management-system/
Sianturi, F.A., Sitio, A.S., Simanjuntak, R.P., Afni, N. and Kartini, S.A., 2025. Edukasi Relational Database Management System (RDBMS) dengan MySQL Pada SMK Methodist 8 Medan. Jurnal Pengabdian kepada Masyarakat Nusantara, 6(1), pp.1525-1529.
Lubis, F.A.S., Lubis, S.S. and Hendrik, B., 2023. Perancangan Sistem Inventory Untuk Stok Barang Herbisida Pada UD. Anugrah Jaya Tani Dengan Bahasa Pemrograman PHP dan Database MySql. Jurnal Sains Informatika Terapan, 2(2), pp.50-55.
Mahdiania, D., Lubis, I.A. and Siahaan, A.T.A.A., 2022. Pendaftaran wasit berbasis website menggunakan PHP dan MySQL pada Kantor Dinas Pemuda dan Olahraga Kota Medan. Jurnal Sains, Informasi dan Teknologi, 1(3), pp.87-93.





