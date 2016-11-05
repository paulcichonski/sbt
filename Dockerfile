FROM library/java:8-jdk

ENV SBT_VERSION 0.13.13

## from: http://www.scala-sbt.org/0.13/docs/Installing-sbt-on-Linux.html
RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 \
    && apt-get update \
    && apt-get install -y sbt=$SBT_VERSION \
    && apt-get clean

## compile sample project to pre-download common dependencies (including scala 2.11.8)
COPY sample-project /opt/sample-project
RUN cd /opt/sample-project \
    && sbt compile \
    && rm -rf /opt/sample-project

## ivy volumes
VOLUME ["/root/.ivy2", "/root/.sbt"]
