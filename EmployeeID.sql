CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Tel CHAR(11),
    Email VARCHAR(30)
);

DROP TABLE GroupID;
CREATE TABLE GroupID (
    GroupID INT PRIMARY KEY,
    GroupName VARCHAR(30),
    LeaderID INT,
    ProjectID INT,
    FOREIGN KEY (LeaderID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);

CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(30),
    StartDate DATETIME
);
