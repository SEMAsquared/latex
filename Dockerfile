FROM ubuntu:16.04

RUN mkdir /workspace

RUN apt-get -qq update && \
    apt-get -qq -y install \
    make \
    texlive \
    texlive-lang-german \
    texlive-latex-extra \
    texlive-bibtex-extra \
    biber && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

VOLUME /workspace

CMD ["/usr/bin/make"]