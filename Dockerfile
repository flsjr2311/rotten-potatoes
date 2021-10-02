FROM python:3.8
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY . .
EXPOSE 5050
CMD [ "gunicorn","--workers=3","--bind","0.0.0.0:5050","app:app" ]