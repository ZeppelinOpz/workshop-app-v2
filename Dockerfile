FROM openjdk:8-jdk-alpine
MAINTAINER Umut Gurkavcu <umut@zeppelinops.com> 
ADD target/*.jar app.jar

ENV JAVA_OPTS=""
ENV SPRING_PROFILE="default"
ENV SERVER_SERVLET_CONTEXT_PATH="/petclinic"
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS \
  -Dspring.profiles.active=$SPRING_PROFILE \
  -jar app.jar 
