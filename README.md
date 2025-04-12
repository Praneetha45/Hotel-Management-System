# Hotel Managment System
The objective of this project is to create a structured system for handling hotel related information.It mainly focuses on creating, inserting, updating, altering and managing records using SQL commands to carry out the operations.
The system highlates essenstila SQL techniques that ensure data handling, proper organization, automation and acurate retrieval of the records.

## Tables used
1.customer_table:customer_id(PK),name,contact_info,id_proof,language_pref
2.room_table:room_id(PK),room_type,price_per_night,availability,dynamic_price
3.booking_table:booking_id(PK),customer_id(FK),room_id(FK),check_in_date,check_out_date,status
4.payemnt_table:payemnt_id(PK),booking_id(FK),amount_paid,payment_date,payment_mode
5.staff_table:staff_id(PK),name,role,contact_info,hire_date,salary

Note: PK=Primary Key, FK=Foriegn Key

## MySQL Workbench
MySQL workbech was utilised for designing the database, creatinf tables, and performing various operations such as data insertin and manipulation.It also faciliated the development of the Entity-Relationship(ER) diagram, which has been included for better understanding and refernce.

## Conlusion
The Hotel Management system project developed using MySQL helps in implementing,storing and performing operations of structured and organised data.
The operations performed range form foundational to advanced including the "trigger" which is used to automatically store data.

## Future Scope
The future scope of this project is to extend it into a web application using python,Flask,HTML and CSS.
The website acts as a platform for users to book rooms and the data us automatically entered into database.





