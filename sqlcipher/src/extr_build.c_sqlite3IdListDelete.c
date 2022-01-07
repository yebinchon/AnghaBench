
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_6__ {struct TYPE_6__* zName; } ;
struct TYPE_5__ {int nId; TYPE_4__* a; } ;
typedef TYPE_1__ IdList ;


 int sqlite3DbFree (int *,TYPE_4__*) ;
 int sqlite3DbFreeNN (int *,TYPE_1__*) ;

void sqlite3IdListDelete(sqlite3 *db, IdList *pList){
  int i;
  if( pList==0 ) return;
  for(i=0; i<pList->nId; i++){
    sqlite3DbFree(db, pList->a[i].zName);
  }
  sqlite3DbFree(db, pList->a);
  sqlite3DbFreeNN(db, pList);
}
