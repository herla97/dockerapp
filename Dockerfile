FROM python:3.5
RUN pip install Flask==1.1.1 redis==3.3.11
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 
