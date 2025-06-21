FROM amazonlinux
RUN yum install java -y
RUN yum install wget -y
RUN yum install tar -y
RUN mkdir /opt/tomcat
RUN cd /opt/tomcat & & wget
https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz
RUN cd /opt/tomcat && tar -xvf apache-tomcat-9.0.63.tar.gz
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-9.0.69/bin/catalina.sh", "run"]
