
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEC_MAJ_VERSION ;
 int DEC_MIN_VERSION ;
 int DEC_REV_VERSION ;

int WebPGetDecoderVersion(void) {
  return (DEC_MAJ_VERSION << 16) | (DEC_MIN_VERSION << 8) | DEC_REV_VERSION;
}
