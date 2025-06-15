FROM python:3.11-slim


RUN apt-get update && apt-get install -y ffmpeg git && apt-get clean


RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir openai-whisper


WORKDIR /app

CMD ["python","test.py"]
