FROM centos:latest
MAINTAINER raojeejula@gmail.com
RUN sudo yum install httpd -y
RUN sudo yum install zip -y 
RUN sudo yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/cs.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip cs.zip
RUN cp -rvf cs/* .
RUN rm -rf cs.zip cs/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

