# DevOps_Assign2

Assignment 2: Dockerfile - Build image with loaded MYSQL schema

Steps to solve this Assignment :-

1. Pull the latest code i.e. Open terminal & type following command :-

   git clone https://github.com/Rajashree-Deshmukh/DevOps_Assign02.git
   
2.Go to cloned repo directory and Build image using command :-

   cd DevOps_Assign02
   
   docker build . -t assign2

3. Start the container using command :- 

   docker run --name dev_assign02 -p3306:3306 -d assign02

4. Connect to MYSQL using a bash shell using command :-
   
   docker exec -it dev_assign02 /bin/bash
   
5. start MYSQL with Username = admin   and   Password = admin   using command :-
   
   mysql -upucsd -ppucsd
   
6.After Successful connection with MYSQL we can see Database = pucsdStudent and Table = Student and we can get whole data using command :-
      
   Use pucsdStudent;
   
   select * from Student;
   
Explanation of Dockerfile and its instructions :-

FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE pucsdStudent
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD admin
ADD Student.sql /docker-entrypoint-initdb.d
EXPOSE 3306


We have to pull the image from MySQL. So here we used "mysql:latest" to pull the image of MySQL having latest version.
we are specifying some Environment variables for creating mysql account. The environment variables we used are mysql root password, mysql database name, mysql username, mysql password.
By doing this the MySQL connection is established. Now there must be some data for all operations in MySQL. So here I have added one Student.sql file where the table Student and its data is available. 
To execute a file at beginning we have to write command “ ADD ” following file name as mentioned in MySQL container documentation that file is to be imported, and by default this file should be added  to specific directory called  “docker-entrypoint-initdb.d ” . The .sql file should be at same directory of Dockerfile.
Now we have to add port mapping with instruction “ EXPOSE “  with port number as 3306.

Github Repository Link :- 
