CREATE TABLE user (user_id INT AUTO_INCREMENT, 
					login VARCHAR(100), 
					name_1 VARCHAR(255), 
					name_2 VARCHAR(255), 
					address VARCHAR(255), 
					phone_1 VARCHAR(255), 
					email VARCHAR(255), 
					password VARCHAR(255),
					dob DATE, 
					type INT(2), 
					UNIQUE(login), 
					PRIMARY KEY (user_id)
);
INSERT INTO user (login, name_1, address, phone_1, email, password, dob, type) 
			VALUES ('Admin', 'Administrator', ,'Bangalore','+743587459','asiyathr@gmail.com','Admin', '1985-07-01',1);


CREATE TABLE policy(policy_no INT AUTO_INCREMENT, 
					user_id INT,
					policy_details VARCHAR(100),
					name VARCHAR(50), 
					amount_paid FLOAT(7,2), 
					end_date DATETIME, 
					policy_valid BIT,  
					PRIMARY KEY (policy_no),
					FOREIGN KEY (user_id) REFERENCES user(user_id)
);


DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `login` VALUES (10,'3W/rVZVIpzO9c0QbU6H31EmHJxo=','2017-11-21 05:25:10','');
INSERT INTO `policy` VALUES (2,1,'Health Insurance Policy 1',10000.00,'2017-11-22 00:00:00','\0','Policy Details 1'),(8,1,'Health Insurance Policy 2',20000.00,'2017-11-22 00:00:00','','Policy Details 2'),(9,1,'Health Insurance Policy 3',30000.00,'2016-11-22 00:00:00','','Policy Details 3'),(10,1,'Health Insurance Policy 4',40000.00,'2017-11-22 00:00:00','','Policy Details 4'),(11,1,'Health Insurance Policy 5',50000.00,'2016-11-22 00:00:00','','Policy Details 5');




CREATE TABLE login(user_id INT, 
				token VARCHAR(40),
				login_time DATETIME, 
				valid BIT);