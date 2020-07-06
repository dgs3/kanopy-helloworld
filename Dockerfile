FROM python:3-slim

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

ADD . /app
EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["/app/app.py"]
