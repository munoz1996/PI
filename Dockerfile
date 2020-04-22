FROM java:8-jdk-alpine

COPY ./dcerp/target/dcerp-api.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch dcerp-api.jar'

ENTRYPOINT ["java","-jar","dcerp-api.jar"]
