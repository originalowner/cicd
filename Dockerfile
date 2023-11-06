# Use the Official CentOS Apache HTTPD Server Image
FROM centos/httpd

# Download and Unzip the Web Content
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN yum install -y unzip && unzip photogenic.zip && rm photogenic.zip

# Expose Port 80 For HTTPD
EXPOSE 80

# Start Apache HTTPD Server
CMD ["httpd", "-D", "FOREGROUND"]
