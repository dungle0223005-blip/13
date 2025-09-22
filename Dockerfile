# Sử dụng Tomcat 9 + JDK 17
FROM tomcat:9.0-jdk17

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war của bạn vào Tomcat, đổi tên thành ROOT.war để chạy ở "/"
COPY dist/ch13_ex1_email /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
