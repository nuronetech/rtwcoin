#!/bin/sh
# Copyright (c) 2010-2018 The AriA Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

#this for autoinstall
apt install -y build-essential libtool autotools-dev automake pkg-config libssl-dev bsdmainutils libboost-all-dev libminiupnpc-dev libzmq3-dev git wget
git clone https://github.com/libevent/libevent.git
cd libevent
./autogen.sh && ./configure && make && make install && cd ..

#db
wget 'http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz'
tar -xzvf db-4.8.30.NC.tar.gz
cd db-4.8.30.NC/build_unix/
../dist/configure --enable-cxx --disable-shared --with-pic
make install && cd ../..

#tar
./autogen.sh && ./configure CPPFLAGS="-I/usr/local/BerkeleyDB.4.8/include" LDFLAGS="-L/usr/local/BerkeleyDB.4.8/lib" --enable-cxx --disable-shared --with-unsupported-ssl && make && make install
