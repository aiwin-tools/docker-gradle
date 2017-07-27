docker-gradle
================

[Docker](https://www.docker.com/) image of [Gradle](https://gradle.org/) with necessary tools for build our projects

Gradle helps teams build, automate and deliver better software, faster.. This image adds several tools used by our integration and deployment processes, like jq, curl, etc

Usage
--------------

    docker run -it --rm --name my-gradle-project -v "$PWD":/usr/src/mygradle -w /usr/src/mygradle aiwin/gradle-base:latest mvn clean install


Build
--------------

Run `build.sh` script to build and push the image to default location

    aiwin/gradle-base:latest

If you want to build and push the image to diferent location, define the following
variables before the execution of the script:

- REPOSITORY. Docker repository
- REGISTRY. Docker registry
- TAG. Tag or version
