FROM python:3.9.13-slim-bullseye
WORKDIR /app
COPY hello.py ./
RUN pip install flask waitress 
ENTRYPOINT ["waitress-serve", "--host", "127.0.0.1", "hello:app"]