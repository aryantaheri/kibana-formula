# Setup Elastic Repo
{% from "kibana/map.jinja" import kibana with context %}

kibana-repo:
  pkgrepo.managed:
    - humanname: Kibana Repo
    - name: deb https://artifacts.elastic.co/packages/5.x/apt stable main
    - file: /etc/apt/sources.list.d/kibana.list
    - gpgcheck: 1
    - key_url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    - require_in:
      - pkg: kibana
    - clean_file: true
