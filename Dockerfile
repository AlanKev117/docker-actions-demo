FROM python:latest
RUN mkdir /app
COPY app.py /app
CMD python /app/app.py
