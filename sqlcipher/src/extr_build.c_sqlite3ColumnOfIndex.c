
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ i16 ;
struct TYPE_3__ {int nColumn; scalar_t__* aiColumn; } ;
typedef TYPE_1__ Index ;



i16 sqlite3ColumnOfIndex(Index *pIdx, i16 iCol){
  int i;
  for(i=0; i<pIdx->nColumn; i++){
    if( iCol==pIdx->aiColumn[i] ) return i;
  }
  return -1;
}
