FROM openjdk:11.0.10-jdk

ENV GRAILS_HOME=/app

RUN mkdir -p $GRAILS_HOME

WORKDIR $GRAILS_HOME

COPY . $GRAILS_HOME

RUN ./gradlew clean

EXPOSE 8080

ENTRYPOINT ["./grailsw", "run-app"]