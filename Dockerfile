# Build Docker images like a pro
FROM maven:3-openjdk-11 as build
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests

FROM openjdk:11-jre-slim
RUN mkdir /project
COPY --from=build /app/target/imagebuilder-0.0.1-SNAPSHOT.jar /project
WORKDIR /project
ENTRYPOINT ["java","-jar","imagebuilder-0.0.1-SNAPSHOT.jar"]
# Build Docker images like a noob
#FROM openjdk:11 as build
#COPY target/*.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]