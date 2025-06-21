FROM amazonlinux
RUN yum install java -y  && \
    yum install tar gzip -y
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.105/bin/apache-tomcat-9.0.105.tar.gz .
RUN tar -xvf apache-tomcat-9.0.105.tar.gz
CMD ["/opt/tomcat/apache-tomcat-9.0.105/bin/catalina.sh", "run"]
EXPOSE 8080
