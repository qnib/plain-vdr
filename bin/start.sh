#!/bin/bash

vdr -P"vnsiserver -p ${VDR_VNSI_PORT:-34890}" -P'satip --devices=1 -s 192.168.1.38|DVBS2-2:S19.2E'
