FROM python:3.11-slim-bookworm

COPY requirements.txt /

ADD cs[s] /app/css
ADD im[g] /app/img
ADD j[s] /app/js
ADD l10[n] /app/l10n
ADD li[b] /app/lib
ADD model[s] /app/models
ADD default_confi[g] /app/default_config

RUN \
  python3 -m pip install -r requirements.txt && rm -rf ~/.cache && rm requirements.txt

WORKDIR /app/lib
ENTRYPOINT ["python3", "main.py"]

LABEL org.opencontainers.image.source=https://github.com/nextcloud/llm2
