FROM python:3
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ADD . /app
ENV NAME World
EXPOSE 80

# コンテナ起動時に app.py を実行
CMD ["python", "app.py"]
