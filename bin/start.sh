#!/bin/bash
set -ex

exec vdr -p ${SVDRP_PORT} -P"vnsiserver -p ${VDR_VNSI_PORT}" -P"satip --devices=1 -s ${VDR_SATIP_DEVICE}"
