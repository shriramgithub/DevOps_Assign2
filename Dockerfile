FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE pucsdStudent
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
ADD student.sql /docker-entrypoint-initdb.d
EXPOSE 3306 
