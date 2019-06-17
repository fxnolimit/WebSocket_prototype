DROP TABLE if EXISTS User_Relationship;
DROP TABLE if EXISTS Registered_User;


CREATE TABLE Registered_User (
   username VARCHAR(40) UNIQUE NOT NULL,
   pw VARCHAR(40),
   fname VARCHAR(40),
   lname  VARCHAR(40),
   email  VARCHAR(40),
   PRIMARY KEY(username));
   
CREATE TABLE User_Relationship (
	user1 VARCHAR(40) UNIQUE NOT NULL,
    user2 VARCHAR(40) UNIQUE NOT NULL,
    relationship VARCHAR(10), #friends, not friends
    FOREIGN KEY	(user1)	REFERENCES	Registered_User(username),
	FOREIGN KEY	(user2)	REFERENCES	Registered_User(username),
    PRIMARY KEY(user1,user2));
    