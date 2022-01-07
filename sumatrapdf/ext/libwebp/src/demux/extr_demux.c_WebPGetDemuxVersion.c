
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMUX_MAJ_VERSION ;
 int DMUX_MIN_VERSION ;
 int DMUX_REV_VERSION ;

int WebPGetDemuxVersion(void) {
  return (DMUX_MAJ_VERSION << 16) | (DMUX_MIN_VERSION << 8) | DMUX_REV_VERSION;
}
