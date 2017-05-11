# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

FROM jupyter/datascience-notebook
#FROM jupyter/minimal-notebook

USER root

# Install all OS dependencies for fully functional notebook server
RUN apt-get update && apt-get install -yq --no-install-recommends python-dev libxml2-dev libxslt-dev libssl-dev libffi-dev && cd /opt/conda/bin/ && ./pip install junos-eznc && ./pip install ansible && ./pip install napalm && ./pip install fabric

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_USER
