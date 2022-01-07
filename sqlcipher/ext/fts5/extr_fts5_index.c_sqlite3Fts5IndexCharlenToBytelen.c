
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int sqlite3Fts5IndexCharlenToBytelen(
  const char *p,
  int nByte,
  int nChar
){
  int n = 0;
  int i;
  for(i=0; i<nChar; i++){
    if( n>=nByte ) return 0;
    if( (unsigned char)p[n++]>=0xc0 ){
      while( (p[n] & 0xc0)==0x80 ){
        n++;
        if( n>=nByte ) break;
      }
    }
  }
  return n;
}
