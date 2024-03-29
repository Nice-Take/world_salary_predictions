FROM python:3.9.7-slim

WORKDIR /app

COPY . /app

# dependencies
RUN pip install --no-cache-dir fastapi==0.109.0 \
                                joblib==1.1.0 \
                                matplotlib==3.4.3 \
                                numpy==1.21.3 \
                                pandas==1.3.4 \
                                pydantic==1.10.4 \
                                scikit_learn==1.0.1 \
                                seaborn==0.13.2 \
                                uvicorn==0.27.0.post1 \
                                xgboost==2.0.3

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
