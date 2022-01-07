
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int i64 ;


 int fts5FastGetVarint32 (int const*,int,int) ;

int sqlite3Fts5PoslistNext64(
  const u8 *a, int n,
  int *pi,
  i64 *piOff
){
  int i = *pi;
  if( i>=n ){

    *piOff = -1;
    return 1;
  }else{
    i64 iOff = *piOff;
    int iVal;
    fts5FastGetVarint32(a, i, iVal);
    if( iVal==1 ){
      fts5FastGetVarint32(a, i, iVal);
      iOff = ((i64)iVal) << 32;
      fts5FastGetVarint32(a, i, iVal);
    }
    *piOff = iOff + ((iVal-2) & 0x7FFFFFFF);
    *pi = i;
    return 0;
  }
}
