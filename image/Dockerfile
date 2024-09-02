FROM ghcr.io/pyvista/pyvista:latest
LABEL maintainer="julian.giordani@sydney.edu.au"

# install the following for gmsh as it required a GL installation
USER root
RUN apt-get update \
&&    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        libglu1 \
        libxcursor-dev \
        libxft2 \
        libxinerama1 \
        libfltk1.3-dev \
        libfreetype6-dev \
        libgl1-mesa-dev \
        libgl1-mesa-glx \
        xvfb \
&&    apt-get clean \
&&    rm -rf /var/lib/apt/lists/*

USER $NB_USER
# Add RUN statements to install packages as the $NB_USER defined in the base images.
RUN mamba install --yes -c conda-forge \
                           petsc4py    \
                           jgiordani::underworld3 \
&&    mamba clean --all -f -y \
&&    fix-permissions "${CONDA_DIR}" \
&&    fix-permissions "/home/${NB_USER}"

RUN pip install --no-cache-dir jupytext==1.14.4 \
                        cmocean \
                        colorcet \
                        imageio \
                        imageio-ffmpeg \
                        jupyter-server-proxy \
                        meshio \
                        trimesh \
&&        fix-permissions "${CONDA_DIR}" \ 
&&        fix-permissions "/home/${NB_USER}"

# copy in script to add conda env vars for Underworld use
COPY --chown=${NB_USER} --chmod=755 fix_conda_dev_env_vars.sh /usr/local/bin/before-notebook.d/

