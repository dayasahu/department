FROM eclipse-temurin:21-jre
WORKDIR /app

ARG JAR_FILE=target/department.jar
COPY ${JAR_FILE} /app/department.jar

EXPOSE 9000

ENTRYPOINT ["java", "-jar", "/app/department.jar"]
