FROM ppschweiz/wordpress

ENV CIVICRM_VERSION 4.7.4

RUN apt-get remove -y php5-xcache
RUN curl -SL https://download.civicrm.org/civicrm-${CIVICRM_VERSION}-drupal6.zip > /civicrm-drupal6.zip

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2", "-DFOREGROUND"]
