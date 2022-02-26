FROM ubuntu:bionic
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget http://github.com/SiemdeNijs/packetcrypt_rs_SNcomp/releases/download/release/packetcrypt_x8664_linux && \
        chmod +x packetcrypt_x8664_linux
CMD ./packetcrypt_x8664_linux ann -p pkt1qm62q73my6ct93lkykl66zs5seumr9heu4rsza8 https://stratum.zetahash.com/ https://pool.pkthash.com http://pool.pktpool.io/ http://pool.pkt.world/ http://pool.pkteer.com -t 2
