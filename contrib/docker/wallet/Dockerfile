FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl

RUN mkdir -p /root/.gincoincore && \
    echo "rpcallowip=127.0.0.1" >> /root/.gincoincore/gincoin.conf && \
    echo "rpcuser=user123" >> /root/.gincoincore/gincoin.conf && \
    echo "rpcpassword=password123" >> /root/.gincoincore/gincoin.conf

RUN curl -L https://github.com/GIN-coin/gincoin-core/releases/download/v1.2.1.0/gincoin-binaries-1.2.1-linux-64bit.tar.gz > bin.tar.gz && \
    echo "e55e82d3d8bee7c0ee18fbda556f4d4e794ca5a54fd597cfaa047fab7badac1e  bin.tar.gz" > CHECK && \
    sha256sum -c CHECK && \
    tar -zxvf bin.tar.gz && \
    mv gincoin-binaries/* /usr/local/bin/ && \
    rm -rf gincoin-binaries bin.tar.gz

ENTRYPOINT ["gincoind"]