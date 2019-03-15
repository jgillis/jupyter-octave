FROM jupyter/base-notebook:4d19a9839c05

RUN pip install --no-cache-dir octave_kernel
USER root

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:octave/stable
RUN apt-get update
RUN apt-get install -y octave liboctave-dev

