FROM java:8-jdk

WORKDIR /usr/src/app
VOLUME /root/.m2
COPY . .
EXPOSE 8080

RUN ./gradlew assemble
CMD java -jar build/libs/demo-0.0.1-SNAPSHOT.jar 
