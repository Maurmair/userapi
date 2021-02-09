FROM maven:3.6.0-jdk-11-slim AS build
COPY src ./src
COPY pom.xml ./
RUN mvn -f ./pom.xml clean package

FROM openjdk:8-jdk-alpine
COPY --from=build /target/userapi-0.0.1-SNAPSHOT.jar app.jar
ARG JAR_FILE=target/userapi-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]