FROM jupyter/datascience-notebook

USER root

# Update aptitude with new repo
RUN apt-get update

# Install software 
RUN apt-get install -y git
 
CMD mkdir /code
WORKDIR /code

RUN git clone https://github.com/data-doctors/instacart-market-basket-analysis.git /code

RUN python /code/01-EDA/EDA_v1.py
