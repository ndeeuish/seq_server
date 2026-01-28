FROM datalust/seq:2023.4

USER root

RUN chmod +x /seqsvr/Seq

ENV ACCEPT_EULA=Y
ENV SEQ_FIRSTRUN_ADMINPASSWORD=admin123

EXPOSE 80

ENTRYPOINT ["/seqsvr/Seq"]
