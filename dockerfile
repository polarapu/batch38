FROM centos
MAINTAINER devops2018 <devopstraining2015@gmail.com>
RUN yum install java -y
RUN yum install wget -y
RUN mkdir /opt/tomcat
RUN cd /opt/tomcat && wget http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
RUN cd /opt/tomcat && tar -xvf apache-tomcat-9.0.14.tar.gz
COPY  context.xml /opt/tomcat/apache-tomcat-9.0.14/webapps/manager/META-INF
COPY tomcat-users.xml /opt/tomcat/apache-tomcat-9.0.14/conf/
