FROM tomcat:latest
LABEL DEVOPS TEAM
ADD ./target/javaparser-maven-sample-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
