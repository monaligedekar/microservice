FROM python:3.7
RUN pip install virtualenv
ENV VIRTUAL_ENV=/venv
RUN virtualenv venv -p python3
ENV PATH="VIRTUAL_ENV/bin:$PATH"
WORKDIR /app
ADD . /app
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8000
RUN pip freeze > app.py
CMD ["python", "app.py"]
