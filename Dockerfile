FROM java:openjdk-8u111-jre

WORKDIR /usr/local

COPY ./test1-1.0.0.jar  /usr/local

RUN cd /usr/local 

ENTRYPOINT ["java", "-jar", "test1-1.0.0.jar"]
