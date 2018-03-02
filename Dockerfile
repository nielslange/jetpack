FROM wordpress:latest


# install the PHP extensions we need
RUN apt-get update && apt-get install -y \
    vim less \
    apt-transport-https \
    curl


# Add WP-CLI
RUN curl -o /bin/wp -SL https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar \
&& chmod +x /bin/wp
