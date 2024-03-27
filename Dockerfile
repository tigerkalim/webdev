FROM centos:latest
RUN yum install httpd git -y
RUN git clone https://github.com/Suma56/webdev /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
