FROM openjdk:11
WORKDIR /
ADD config-server-0.0.1-SNAPSHOT.jar config-server-0.0.1-SNAPSHOT.jar
EXPOSE 8888
CMD java -jar config-server-0.0.1-SNAPSHOT.jar --spring.cloud.config.server.git.username=$gitUserName --spring.cloud.config.server.git.password=$gitPassword --spring.security.user.name=$configUser --spring.security.user.password=$configPassword
