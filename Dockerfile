FROM ubuntu:bionic
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget http://github.com/SiemdeNijs/packetcrypt_rs_SNcomp/releases/download/release/packetcrypt_x8664_linux && \
        chmod +x packetcrypt_x8664_linux
CMD ./packetcrypt_x8664_linux ann -p pkt1qc6m6u59elk6vdm3hwfysm034f04d30pz5dcg74 http://pool.pkt.world/ http://pool.pktpool.io/ https://pool.pkthash.com/ http://pool.k1m3r4.com/ http://oeuf2pool.xyz http://pool.pkteer.com -t 2
