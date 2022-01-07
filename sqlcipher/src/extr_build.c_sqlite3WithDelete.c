
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Cte {TYPE_1__* zName; int pSelect; int pCols; } ;
typedef int sqlite3 ;
struct TYPE_4__ {int nCte; struct Cte* a; } ;
typedef TYPE_1__ With ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int sqlite3ExprListDelete (int *,int ) ;
 int sqlite3SelectDelete (int *,int ) ;

void sqlite3WithDelete(sqlite3 *db, With *pWith){
  if( pWith ){
    int i;
    for(i=0; i<pWith->nCte; i++){
      struct Cte *pCte = &pWith->a[i];
      sqlite3ExprListDelete(db, pCte->pCols);
      sqlite3SelectDelete(db, pCte->pSelect);
      sqlite3DbFree(db, pCte->zName);
    }
    sqlite3DbFree(db, pWith);
  }
}
