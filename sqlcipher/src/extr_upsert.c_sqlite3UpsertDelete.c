
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int pUpsertWhere; int pUpsertSet; int pUpsertTargetWhere; int pUpsertTarget; } ;
typedef TYPE_1__ Upsert ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int sqlite3ExprDelete (int *,int ) ;
 int sqlite3ExprListDelete (int *,int ) ;

void sqlite3UpsertDelete(sqlite3 *db, Upsert *p){
  if( p ){
    sqlite3ExprListDelete(db, p->pUpsertTarget);
    sqlite3ExprDelete(db, p->pUpsertTargetWhere);
    sqlite3ExprListDelete(db, p->pUpsertSet);
    sqlite3ExprDelete(db, p->pUpsertWhere);
    sqlite3DbFree(db, p);
  }
}
