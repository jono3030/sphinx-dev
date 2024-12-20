FROM sphinxdoc/sphinx

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    wget \
    vim

WORKDIR /docs

COPY ./requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN rm /docs/requirements.txt
