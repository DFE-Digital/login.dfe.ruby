FROM appsvc/ruby
MAINTAINER Department For Education

RUN apt-get update \
 && apt-get install -y apt-transport-https lsb-release ca-certificates \
 && wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
 && sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list' \ 
 && apt-get update \
 && apt-get install -y --no-install-recommends libssl1.0.2