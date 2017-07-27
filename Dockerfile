FROM gradle:4.0.1-jdk-8

RUN apt-get update && apt-get install -y jq zip python

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "/tmp/get-pip.py" && \
  python /tmp/get-pip.py && \
  pip install awscli --ignore-installed six

ADD sonarqube.gradle $HOME
