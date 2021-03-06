FROM guusk/docker-latex

RUN apt-get update -q && apt-get install -qy --no-install-recommends \
            wget gawk bc \
			poppler-utils \
            imagemagick \
            unzip \
            xzdec \
    &&  rm -rf /var/lib/apt/lists/*

RUN echo "Europe/Amsterdam" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

# How to use the Tex Live package manager (tlmgr) for Tex Live 2013 (default for Ubuntu 14.04)
#RUN tlmgr init-usertree \
#    && tlmgr option repository ftp://tug.org/historic/systems/texlive/2013/tlnet-final \
#    && tlmgr install <pkg-name>
    
