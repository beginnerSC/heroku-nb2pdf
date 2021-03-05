FROM python:3.8.2-slim

ENV APP_HOME /app
WORKDIR ${APP_HOME}

COPY . ./

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-publishers \
    texlive-science \
    texlive-xetex \
    texlive-lang-chinese \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install pip pipenv --upgrade

RUN pip install voila Markdown

CMD ["./scripts/postBuild.sh"]
CMD ["./scripts/entrypoint.sh"]
