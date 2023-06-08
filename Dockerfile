FROM python:3.11

WORKDIR /code

RUN pip install fastapi
RUN pip install "uvicorn[standard]"

# COPY ./requirements.txt /code/requirements.txt

# RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# COPY ./app /code/app

# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

# If running behind a proxy like Nginx or Traefik add --proxy-headers
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--proxy-headers"]

CMD ["tail", "-f", "/dev/null"]


# uvicorn app.main:app --host 0.0.0.0 --port 8000
# uvicorn main:app --reload
# uvicorn main:app --host 0.0.0.0 --port 8000