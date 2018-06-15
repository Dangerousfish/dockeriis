# Indicates that the windowsservercore image will be used as the base image.
FROM microsoft/windowsservercore

# Metadata indicating an image maintainer.
MAINTAINER https://github.com/Dangerousfish

# Uses dism.exe to install the IIS role.
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

# Sets directory container should work from
WORKDIR /inetpub/wwwroot

# The COPY instruction copies files and directories to the filesystem of the container. The files and directories need to be in a path relative to the Dockerfile.

COPY IIS_Content/ .
