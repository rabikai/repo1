FROM python:latest

WORKDIR /data

ENV ENV_TO_REPLACE=

RUN echo "ENV_TO_REPLACE=$ENV_TO_REPLACE"

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 80

COPY rng.py .

RUN chown 1001 *

USER 1001:1001

CMD [ "python", "./rng.py" ]