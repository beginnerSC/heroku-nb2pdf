#!/bin/bash

jupyter serverextension enable voila --sys-prefix
jupyter nbextension enable --py widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install @jupyter-voila/jupyterlab-preview