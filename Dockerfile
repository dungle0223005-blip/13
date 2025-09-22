# Base image Tomcat
FROM tomcat:9.0-jdk17

# Copy PostgreSQL JDBC driver vào Tomcat lib
ADD https://jdbc.postgresql.org/download/postgresql-42.7.8.jar /usr/local/tomcat/lib/

# Copy WAR vào Tomcat webapps
COPY dist/ch13_ex1_email.war /usr/local/tomcat/webapps/

# (Tùy chọn) Copy context.xml để override cấu hình DataSource
COPY web/META-INF/context.xml /usr/local/tomcat/conf/context.xml

EXPOSE 8080

CMD ["catalina.sh", "run"]
