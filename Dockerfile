FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/spotify-app-1.0.0.jar /app/spotify-app.jar
EXPOSE 5555
ENTRYPOINT ["java", "-jar", "spotify-app.jar"]
