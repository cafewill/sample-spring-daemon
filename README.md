Simple Spring Daemon

Step #1 code simple-0.0.1-SNAPSHOT.war

Step #2 Dockerfile

    FROM openjdk:11
    WORKDIR /cube
    COPY simple-0.0.1-SNAPSHOT.war /cube
    RUN chmod +x /cube/simple-0.0.1-SNAPSHOT.war
    CMD ["java", "-jar", "simple-0.0.1-SNAPSHOT.war"]    

Step #3 Docker build

    sudo docker build -t spring-daemon .

Step #3 Docker run and connect localhost:8080 or localhost:8282

    sudo docker run -p 8080:8282 spring-daemon
    sudo docker run -p 8282:8282 spring-daemon

## See Also

* https://github.com/cafewill/spring-daemon-devel
* https://github.com/cafewill/node-daemon-devel
* https://github.com/cafewill/flask-daemon-devel
* https://github.com/cafewill/fastapi-daemon-devel

* https://github.com/cafewill/simple-crud-gradle-jpa-h2-thymeleaf
* https://github.com/cafewill/simple-crud-maven-jpa-h2-freemarker
