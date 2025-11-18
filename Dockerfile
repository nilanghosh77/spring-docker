FROM eclipse-temurin:21-jdk
WORKDIR /appContainer
COPY cert.txt /appContainer
COPY ./target/spring-docker.jar /appContainer
EXPOSE 8282
CMD ["java", "-jar", "spring-docker.jar"]