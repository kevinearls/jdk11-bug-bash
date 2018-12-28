FROM jenkins/jenkins:jdk11
MAINTAINER Kevin Earls <kearls@cloudbees.com>

USER root
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

USER jenkins


