FROM adoptopenjdk/openjdk11:jre

ENV WIREMOCK_VERSION 2.35.0

WORKDIR /home/wiremock

RUN mkdir -p /var/wiremock/lib/

RUN curl https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/$WIREMOCK_VERSION/wiremock-jre8-standalone-$WIREMOCK_VERSION.jar \
        -o /var/wiremock/lib/wiremock-jre8-standalone.jar

EXPOSE 8080 8443

ENTRYPOINT ["java", "-jar", "wiremock-jre8-standalone.jar"]
