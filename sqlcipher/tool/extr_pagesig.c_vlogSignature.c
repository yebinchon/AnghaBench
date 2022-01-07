
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned int,...) ;

__attribute__((used)) static void vlogSignature(unsigned char *p, int n, char *zCksum){
  unsigned int s0 = 0, s1 = 0;
  unsigned int *pI;
  int i;
  if( n<=16 ){
    for(i=0; i<n; i++) sprintf(zCksum+i*2, "%02x", p[i]);
  }else{
    pI = (unsigned int*)p;
    for(i=0; i<n-7; i+=8){
      s0 += pI[0] + s1;
      s1 += pI[1] + s0;
      pI += 2;
    }
    for(i=0; i<8; i++) sprintf(zCksum+i*2, "%02x", p[i]);
    sprintf(zCksum+i*2, "-%08x%08x", s0, s1);
  }
}
