# Use the Official CentOS Apache HTTPD Server Image
80 For HTTPD
EXPOSE 80

# Start Apache HTTPD Server
CMD ["httpd", "-D", "FOREGROUND"]
