FROM amazonlinux

RUN yum -y update
RUN yum -y install httpd

COPY ./www/index.html /var/www/html/index.html

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80





