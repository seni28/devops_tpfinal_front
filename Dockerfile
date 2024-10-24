FROM python

WORKDIR /app

COPY . .

ENV FLASK_APP=main.py

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "flask", "run"]
#  "--host=0.0.0.0"