
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nCol; TYPE_1__* aCol; } ;
typedef TYPE_2__ Table ;
struct TYPE_4__ {char affinity; } ;


 char SQLITE_AFF_INTEGER ;
 int assert (int) ;

char sqlite3TableColumnAffinity(Table *pTab, int iCol){
  assert( iCol<pTab->nCol );
  return iCol>=0 ? pTab->aCol[iCol].affinity : SQLITE_AFF_INTEGER;
}
