{% from "ddclient/map.jinja" import ddclient with context %}

ddclient:
  pkg:
    - installed
    - name: {{ ddclient.pkg }}
  service:
    - running
    - name: {{ ddclient.service }}
    - enable: True
