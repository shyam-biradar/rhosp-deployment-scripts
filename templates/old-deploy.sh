#!/bin/bash -x
source ./stackrc
 
openstack overcloud deploy --templates -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /home/stack/templates/network-environment.yaml \
-e /home/stack/templates/storage-environment.yaml \
--control-scale 1 --compute-scale 1 --ceph-storage-scale 1 --control-flavor control --compute-flavor compute  --ceph-storage-flavor ceph-storage \
--ntp-server 0.north-america.pool.ntp.org --neutron-network-type vxlan --neutron-tunnel-types vxlan \
--validation-errors-fatal --validation-warnings-fatal
