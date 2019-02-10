FROM paultopia/dockerdoc

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends \
    wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget --no-verbose \
    https://github.com/jgm/pandoc/releases/download/2.6/pandoc-2.6-1-amd64.deb \
  && dpkg -i pandoc-2.6-1-amd64.deb

WORKDIR /source

ENTRYPOINT ["pandoc"]

CMD ["--help"]
