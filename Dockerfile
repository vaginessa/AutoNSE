FROM alpine:edge

LABEL com.source="https://github.com/m4ll0k/AutoNSE.git"
LABEL com.creator="Momo Outaadi (m4ll0k)"
LABEL com.dockerfileauthor="khast3x"
LABEL com.description="AutoNSE - Massive NSE AutoSploit/AutoScanner"


RUN apk --update add nmap \
                     nmap-scripts \
                     git \
                     bash \
                     util-linux \
                     ncurses

RUN git clone https://github.com/khast3x/AutoNSE.git
WORKDIR AutoNSE
VOLUME "/loot/"
#ENTRYPOINT ["bash", "autonse.sh"]
ENTRYPOINT ["bash"]