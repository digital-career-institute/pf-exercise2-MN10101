mysql> create table Psychologists(
    -> PsychologistID INT PRIMARY KEY,
    -> PsychologistName VARCHAR(255),
    -> Specialty VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Patients (
    -> PatientID INT PRIMARY KEY,
    -> Name VARCHAR(255),
    -> Age INT,
    -> Gender VARCHAR(10),
    -> PsychologistID INT,
    -> FOREIGN KEY (PsychologistID) REFERENCES Psychologists(PsychologistID)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> show create table Patients;
+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table

                                                                                                                                          |
+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Patients | CREATE TABLE `patients` (
  `PatientID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `PsychologistID` int DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  KEY `PsychologistID` (`PsychologistID`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`PsychologistID`) REFERENCES `psychologists` (`PsychologistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> ALTER TABLE Patients DROP FOREIGN KEY patients_ibfk_1;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Patients ADD PRIMARY KEY (PatientID);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Patients ADD FOREIGN KEY (PsychologistID) REFERENCES Psychologists(PsychologistID);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0



