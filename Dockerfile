FROM debian:8.2
MAINTAINER David Sferruzza <david.sferruzza@gmail.com>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Install LaTeX tools
RUN apt-get update \
 && apt-get install -y \
 texlive-full

# Slim down image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*
