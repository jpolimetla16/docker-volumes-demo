FROM openjdk:17.0.2-slim
VOLUME [ "/tno" ]
WORKDIR /app
ADD target/*.jar test.jar
EXPOSE 8181
ENTRYPOINT [ "java","-jar","test.jar" ]