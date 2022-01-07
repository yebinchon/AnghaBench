
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MUX_MAJ_VERSION ;
 int MUX_MIN_VERSION ;
 int MUX_REV_VERSION ;

int WebPGetMuxVersion(void) {
  return (MUX_MAJ_VERSION << 16) | (MUX_MIN_VERSION << 8) | MUX_REV_VERSION;
}
