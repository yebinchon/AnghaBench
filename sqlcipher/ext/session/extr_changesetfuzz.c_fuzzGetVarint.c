
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sqlite3_uint64 ;



__attribute__((used)) static int fuzzGetVarint(u8 *p, int *pnVal){
  int i;
  sqlite3_uint64 nVal = 0;
  for(i=0; i<9; i++){
    nVal = (nVal<<7) + (p[i] & 0x7F);
    if( (p[i] & 0x80)==0 ){
      i++;
      break;
    }
  }
  *pnVal = (int)nVal;
  return i;
}
