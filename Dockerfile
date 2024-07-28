FROM openjdk:11-jre
EXPOSE 8080
ARG APP_NAME="spring_boot_ci_cd"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE=${APP_NAME}-${APP_VERSION}.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
