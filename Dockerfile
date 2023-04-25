FROM openjdk:11

WORKDIR /cube

COPY simple-0.0.1-SNAPSHOT.war /cube
RUN chmod +x /cube/simple-0.0.1-SNAPSHOT.war

CMD ["java", "-jar", "simple-0.0.1-SNAPSHOT.war"]
