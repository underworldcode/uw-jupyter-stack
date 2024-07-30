#echo 'eval "$(command conda shell.bash hook 2> /dev/null)"' >> /home/jovyan/.bashrc
#export CC=mpicc
export CC=/opt/conda/bin/x86_64-conda-linux-gnu-cc
export CFLAGS="-march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /opt/conda/include"

export CXX=/opt/conda/bin/x86_64-conda-linux-gnu-c++
export CXXFLAGS="-fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /opt/conda/include"

export CPP=/opt/conda/bin/x86_64-conda-linux-gnu-cpp
export CPPFLAGS="-DNDEBUG -D_FORTIFY_SOURCE=2 -O2 -isystem /opt/conda/include"
