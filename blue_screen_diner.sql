CREATE TABlE blue_screen_diner.Users(
user_id int NOT NULL AUTO_INCREMENT,
user_name varchar(255),
email varchar(255),
phone_number varchar(10),
address varchar(255),
password varchar(150),
security_question varchar(200),
answer varchar(200),
status varchar(20),
role enum('customer','employee','admin') DEFAULT 'customer',
PRIMARY KEY (user_id),
UNIQUE(email)
);

CREATE TABLE blue_screen_diner.Rating(
rating_id int NOT NULL AUTO_INCREMENT,
user_email varchar(200),
experience_rating double,
comments varchar(255),
PRIMARY KEY (rating_id)
);


CREATE TABLE blue_screen_diner.Reservation(
res_id int NOT NULL AUTO_INCREMENT,
user_id int,
table_num int,
reservation datetime DEFAULT NULL,
PRIMARY KEY(res_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE blue_screen_diner.Category(
category_id int NOT NULL auto_increment,
name varchar(200),
PRIMARY KEY (category_id)
);

CREATE TABLE blue_screen_diner.Product(
product_id int NOT NULL AUTO_INCREMENT,
product_name varchar(100),
cateogry varchar(100),
product_price double,
PRIMARY KEY (product_id)
);

CREATE TABLE blue_screen_diner.Orders(
order_id int NOT NULL AUTO_INCREMENT,
user_id int,
product_id int,
picked_up boolean not null default 0,
PRIMARY KEY (order_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE blue_screen_diner.Bill(
id int AUTO_INCREMENT PRIMARY KEY,
name varchar(200),
phone_number varchar(200),
email varchar(200),
date varchar(50),
createdBy varchar(200)
);


DROP TABLE blue_screen_diner.Rating;
DROP TABLE blue_screen_diner.Reservation;
DROP TABLE blue_screen_diner.Orders;
DROP TABLE blue_screen_diner.Product;
DROP TABLE blue_screen_diner.Category;
DROP TABLE blue_screen_diner.Users;

-- INSERT INTO blue_screen_diner.Users
-- VALUES (1,'ncivil','ncivil@nyit.edu', '5166055295', '1362 estelle court','BigBoss2010!', 'admin', "Favorite pokemon type", "Fire type", "Success");

INSERT INTO blue_screen_diner.Users
VALUES (1,'ncivil','ncivil@nyit.edu', '5166055295', '1362 estelle court','BigBoss2010!', "Favorite pokemon type", "Fire type", "True", "admin");