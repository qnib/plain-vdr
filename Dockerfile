FROM qnib/uplain-init

RUN apt-get update
RUN apt-get install -y vdr-plugin-satip
RUN apt-get install -y vdr-plugin-vnsiserver
RUN apt-get install -y vdr-plugin-streamdev-server
COPY etc/allowed_hosts.conf /var/lib/vdr/plugins/vnsiserver/allowed_hosts.conf
COPY bin/start.sh /opt/qnib/vdr/bin/
VOLUME ["/var/lib/video"]
CMD ["/opt/qnib/vdr/bin/start.sh"]
ENV VDR_VNSI_PORT=34890 \
    SVDRP_PORT=6419
COPY etc/channels.conf etc/setup.conf /var/lib/vdr/
RUN chown -R vdr: /var/lib/vdr /etc/vdr
