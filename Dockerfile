FROM python:3.9-bullseye
LABEL project="qtlearning"
EXPOSE 5000
RUN git clone https://github.com/vemula-sai/flask-hello-world.git && \
    cd flask-hello-world && \
    mv hello.py app.py && \
    pip3 install flask
WORKDIR /flask-hello-world
CMD ["flask","run","-h","0.0.0.0"]
