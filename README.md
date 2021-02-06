# Jenkins Docker image for Raspberry Pi

A basic Jenkins image that's compatible with Raspberry Pi. 

### What is Jenkins?

Jenkins is an open source automation server written in Java. The project was forked from Hudson after a dispute with Oracle. Jenkins helps to automate the non-human part of the whole software development process, with now common things like continuous integration, but by further empowering teams to implement the technical part of a Continuous Delivery.

> [wikipedia.org/wiki/Jenkins_(software)](http://en.wikipedia.org/wiki/Jenkins_(software))

![logo](https://raw.githubusercontent.com/docker-library/docs/3ab4dafb41dd0e959ff9322b3c50af2519af6d85/jenkins/logo.png)

### Usage

```
docker run -p 9090:8080 -p 50000:50000 ghazanfar9131/docker-rpi-jenkins
```

This will store the workspace in /var/jenkins_home. All Jenkins data lives in there - including plugins and configuration.
You will probably want to make that an explicit volume so you can manage it and attach to another container for upgrades :

```
docker run --name rpi-jenkins -d -p 9090:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home ghazanfar9131/docker-rpi-jenkins
```

### Initial Password.

Follow these to get the initial Password:
```
docker exec -it rpi-jenkins 'sh'
```

```
cat /var/jenkins_home/secrets/initialAdminPassword
```

this will automatically create a 'jenkins' volume on docker host, that will survive container stop/restart/deletion.

---

This image is available on [GitHub](https://github.com/gajjuCoderBoi/docker-rpi-jenkins) & [DockerHub](https://hub.docker.com/r/ghazanfar9131/docker-rpi-jenkins).
