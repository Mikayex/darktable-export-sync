FROM python:3.11-bookworm

# Install Darktable
RUN echo 'deb http://download.opensuse.org/repositories/graphics:/darktable/Debian_12/ /' > /etc/apt/sources.list.d/darktable.list
RUN curl -fsSL https://download.opensuse.org/repositories/graphics:darktable/Debian_12/Release.key | gpg --dearmor > /etc/apt/trusted.gpg.d/darktable.gpg
RUN apt-get update \
    && apt-get install -y --no-install-recommends darktable \
    && rm -rf /var/lib/apt/lists/*
