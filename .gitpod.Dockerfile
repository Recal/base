FROM gitpod/workspace-full
                    
USER root

RUN sudo apt-get update && \
    sudo apt-get install curl gnupg && \
    sudo rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_19.x | bash
RUN sudo apt-get install nodejs

USER gitpod
USER root
