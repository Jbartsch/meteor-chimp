FROM node:6.10.3-wheezy
MAINTAINER jonas@pliik.io

RUN apt-get update
RUN apt-get install locales

# Set the locale
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    echo 'LANG="en_US.UTF-8"'>/etc/default/locale && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8

RUN npm install chimp -g
RUN curl https://install.meteor.com/ | sh

RUN useradd -ms /bin/bash meteor \
    groupadd docker \
    usermod -aG docker meteor

USER meteor

EXPOSE 3001
EXPOSE 3000