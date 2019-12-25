FROM python
MAINTAINER  yangyi@tib.cas.cn
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
RUN mkdir /home/gsmn
WORKDIR /home/gsmn/
CMD jupyter-notebook --ip=0.0.0.0 --no-browser --allow-root
