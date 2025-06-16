FROM jlesage/baseimage-gui:debian-12-v4

ENV DISPLAY=:1

RUN apt-get update && \
    apt-get install -y \
        wget \
        ca-certificates \
        xvfb \
        x11vnc \
        fluxbox \
        python3 \
        python3-pip \
        websockify \
        netcat-openbsd \
        x11-utils \
        fuse \
        procps \
        libnss3 \
        libatk1.0-0 \
        libatk-bridge2.0-0 \
        libgtk-3-0 \
        libgbm1 \
        libasound2

RUN mkdir -p /app && \
    wget --no-check-certificate -O /app/un-redact https://download.redact.dev/linux && \
    chmod +x /app/un-redact

COPY startapp.sh /startapp.sh

RUN set-cont-env APP_NAME "un-redact"