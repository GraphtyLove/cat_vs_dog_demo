FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel

RUN mkdir /app
WORKDIR /app

COPY cat_vs_dogs /app/cat_vs_dogs

# COPY requirements.txt /app/requirements.txt
# RUN pip install -r requirements.txt

COPY second.py /app/second.py

RUN pip install scikit-learn

CMD python3 second.py