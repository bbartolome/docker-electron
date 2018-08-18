FROM ubuntu:bionic

RUN apt-get update && apt-get install -y chromium-browser nodejs
RUN apt-get install -y npm
RUN apt-get install -y libnss3 libgconf2-4 libnotify4 libgtk2.0-0
RUN apt-get install -y dbus-x11
RUN apt-get install -y libpulse0

RUN npm install -g electron@2.0.7
WORKDIR /workspace

COPY src /workspace

CMD electron --disable-gpu .
