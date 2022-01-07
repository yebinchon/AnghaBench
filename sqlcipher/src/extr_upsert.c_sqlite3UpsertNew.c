
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {scalar_t__ pUpsertIdx; int * pUpsertWhere; int * pUpsertSet; int * pUpsertTargetWhere; int * pUpsertTarget; } ;
typedef TYPE_1__ Upsert ;
typedef int ExprList ;
typedef int Expr ;


 TYPE_1__* sqlite3DbMallocRaw (int *,int) ;
 int sqlite3ExprDelete (int *,int *) ;
 int sqlite3ExprListDelete (int *,int *) ;

Upsert *sqlite3UpsertNew(
  sqlite3 *db,
  ExprList *pTarget,
  Expr *pTargetWhere,
  ExprList *pSet,
  Expr *pWhere
){
  Upsert *pNew;
  pNew = sqlite3DbMallocRaw(db, sizeof(Upsert));
  if( pNew==0 ){
    sqlite3ExprListDelete(db, pTarget);
    sqlite3ExprDelete(db, pTargetWhere);
    sqlite3ExprListDelete(db, pSet);
    sqlite3ExprDelete(db, pWhere);
    return 0;
  }else{
    pNew->pUpsertTarget = pTarget;
    pNew->pUpsertTargetWhere = pTargetWhere;
    pNew->pUpsertSet = pSet;
    pNew->pUpsertWhere = pWhere;
    pNew->pUpsertIdx = 0;
  }
  return pNew;
}
