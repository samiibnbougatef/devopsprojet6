FROM tomcat:8.5.82
MAINTAINER "samiibnbougatef"  
RUN cp -R /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps/
COPY  ressources/webapp.war  /usr/local/tomcat/webapps/
COPY  ressources/context.xml  /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY  ressources/context.xml  /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY  ressources/tomcat-users.xml  /usr/local/tomcat/conf/tomcat-users.xml
