FROM openjdk:8
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
COPY ./build/libs/*.jar /maven/app.jar
EXPOSE 8080
CMD ["java","-jar","maven/app.jar"]
