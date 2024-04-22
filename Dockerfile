FROM centos:7

WORKDIR /usr/local

COPY ./jdk-11.0.23_linux-x64_bin.tar.gz /usr/local
COPY ./test1-1.0.0.jar  /usr/local

RUN cd /usr/local \ && tar -zxvf ./jdk-11.0.23_linux-x64_bin.tar.gz

ENV PATH=&PATH:/usr/local/jdk-11.0.23/bin

ENTRYPOINT ["java", "-jar", "test1-1.0.0.jar"]
