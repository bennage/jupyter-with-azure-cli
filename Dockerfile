FROM jupyter/base-notebook

USER root
RUN apt-get update
RUN apt-get install curl -y

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
RUN az extension add --name azure-cli-iot-ext
RUN rm /home/jovyan/.azure -rf

USER jovyan


CMD ["start-notebook.sh"]