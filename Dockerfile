FROM tomcat:7-jre7
MAINTAINER simiary
RUN mkdir /etc/stanford-pos
RUN mkdir /etc/stanford-pos/models
COPY /stanford-postagger-full-2015-04-20/models/english-bidirectional-distsim.tagger /etc/stanford-pos/models/english-bidirectional-distsim.tagger
RUN mkdir /etc/treetagger
COPY /treetagger /etc/treetagger
WORKDIR /etc/treetagger
RUN /bin/bash -C install-tagger.sh
ENV TREETAGGER_HOME /etc/treetagger
COPY /HeidelTime/TemporalTagger.war /usr/local/tomcat/webapps/TemporalTagger.war
