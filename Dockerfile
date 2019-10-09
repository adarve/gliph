FROM perl

WORKDIR /
COPY ./gliph-1.0.tgz gliph-1.0.tgz
RUN tar xfvz gliph-1.0.tgz

WORKDIR /gliph/bin/
CMD perl gliph-group-discovery.pl --tcr /vdjdb/vdjdb.slim.txt
