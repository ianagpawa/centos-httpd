FROM centos:latest
MAINTAINER Ian Agpawa<agpawaji@gmail.com>
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
