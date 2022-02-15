# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

#
ARG JAR_FILE=/build/libs/*.jar

#
WORKDIR /opt/app

#
COPY ${JAR_FILE} app.jar

#
ENTRYPOINT ["java","-jar","app.jar"]
