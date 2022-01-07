
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;
typedef int LogEst ;



LogEst logEstFromInteger(sqlite3_uint64 x){
  static LogEst a[] = { 0, 2, 3, 5, 6, 7, 8, 9 };
  LogEst y = 40;
  if( x<8 ){
    if( x<2 ) return 0;
    while( x<8 ){ y -= 10; x <<= 1; }
  }else{
    while( x>255 ){ y += 40; x >>= 4; }
    while( x>15 ){ y += 10; x >>= 1; }
  }
  return a[x&7] + y - 10;
}
