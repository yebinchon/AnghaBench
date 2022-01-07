
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void DigestToBase16(unsigned char *digest, char *zBuf, int nByte){
  static const char zEncode[] = "0123456789abcdef";
  int ix;

  for(ix=0; ix<nByte; ix++){
    *zBuf++ = zEncode[(*digest>>4)&0xf];
    *zBuf++ = zEncode[*digest++ & 0xf];
  }
  *zBuf = '\0';
}
