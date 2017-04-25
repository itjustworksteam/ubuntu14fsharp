FROM therickys93/ubuntu14
ADD . /fsharp
WORKDIR /fsharp
RUN bash install.sh
