
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char fuzzRandomByte () ;

__attribute__((used)) static void fuzzRandomBlob(int nBuf, unsigned char *zBuf){
  int i;
  for(i=0; i<nBuf; i++){
    zBuf[i] = fuzzRandomByte();
  }
}
