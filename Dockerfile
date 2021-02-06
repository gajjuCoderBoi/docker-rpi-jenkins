FROM balenalib/raspberry-pi-debian-openjdk:latest
MAINTAINER Mohammad Javed <ghazanfar9131@gmail.com>

# Jenkins version
ENV JENKINS_VERSION 2.263.3

# Other env variables
ENV JENKINS_HOME /var/jenkins_home
ENV JENKINS_SLAVE_AGENT_PORT 50000

# Get Jenkins
RUN curl -fL -o /opt/jenkins.war https://get.jenkins.io/war-stable/${JENKINS_VERSION}/jenkins.war

# Expose volume
VOLUME ${JENKINS_HOME}

# Working dir
WORKDIR ${JENKINS_HOME}

# Expose ports
EXPOSE 8080 ${JENKINS_SLAVE_AGENT_PORT}

# Start Jenkins
CMD ["java -jar /opt/jenkins.war"]