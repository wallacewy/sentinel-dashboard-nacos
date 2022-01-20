FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER axzywan@hotmail.com

ADD target/sentinel-dashboard.jar /app/sentinel/app.jar

EXPOSE 8858 8719

ENTRYPOINT ["java","-server","-Djava.security.egd=file:/dev/./urandom", "-Dserver.port=8858","-Dcsp.sentinel.api.port=8719", "-Dcsp.sentinel.dashboard.server=localhost:8858", "-Dproject.name=cloud-sentinel","-jar","/app/sentinel/app.jar"]