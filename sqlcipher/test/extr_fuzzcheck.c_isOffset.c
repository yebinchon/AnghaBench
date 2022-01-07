
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int hexToInt (unsigned char) ;
 int isxdigit (unsigned char) ;

__attribute__((used)) static int isOffset(
  const unsigned char *zIn,
  int nIn,
  unsigned int *pK,
  unsigned int *pI
){
  int i;
  unsigned int k = 0;
  unsigned char c;
  for(i=1; i<nIn && (c = zIn[i])!=']'; i++){
    if( !isxdigit(c) ) return 0;
    k = k*16 + hexToInt(c);
  }
  if( i==nIn ) return 0;
  *pK = 2*k;
  *pI += i;
  return 1;
}
