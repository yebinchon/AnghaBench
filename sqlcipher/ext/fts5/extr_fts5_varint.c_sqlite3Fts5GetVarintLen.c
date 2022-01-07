
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assert (int) ;

int sqlite3Fts5GetVarintLen(u32 iVal){



  assert( iVal>=(1 << 7) );
  if( iVal<(1 << 14) ) return 2;
  if( iVal<(1 << 21) ) return 3;
  if( iVal<(1 << 28) ) return 4;
  return 5;
}
