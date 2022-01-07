
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {struct TYPE_4__* zBase; struct TYPE_4__* zName; int pStart; int pEnd; int pOrderBy; int pPartition; int pFilter; } ;
typedef TYPE_1__ Window ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int sqlite3ExprDelete (int *,int ) ;
 int sqlite3ExprListDelete (int *,int ) ;

void sqlite3WindowDelete(sqlite3 *db, Window *p){
  if( p ){
    sqlite3ExprDelete(db, p->pFilter);
    sqlite3ExprListDelete(db, p->pPartition);
    sqlite3ExprListDelete(db, p->pOrderBy);
    sqlite3ExprDelete(db, p->pEnd);
    sqlite3ExprDelete(db, p->pStart);
    sqlite3DbFree(db, p->zName);
    sqlite3DbFree(db, p->zBase);
    sqlite3DbFree(db, p);
  }
}
