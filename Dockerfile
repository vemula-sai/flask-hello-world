FROM python:3.10.9-alpine3.17
LABEL project="qtlearning"
EXPOSE 5000
RUN apk update && apk add git
RUN git clone https://github.com/vemula-sai/flask-hello-world.git && \
    cd flask-hello-world && \
    pip3 install flask
WORKDIR /flask-hello-world
CMD ["flask","run","-h","0.0.0.0"]
