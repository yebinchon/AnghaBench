
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {struct TYPE_4__* zSpan; int pUpsert; int pIdList; int pSelect; int pExprList; int pWhere; struct TYPE_4__* pNext; } ;
typedef TYPE_1__ TriggerStep ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int sqlite3ExprDelete (int *,int ) ;
 int sqlite3ExprListDelete (int *,int ) ;
 int sqlite3IdListDelete (int *,int ) ;
 int sqlite3SelectDelete (int *,int ) ;
 int sqlite3UpsertDelete (int *,int ) ;

void sqlite3DeleteTriggerStep(sqlite3 *db, TriggerStep *pTriggerStep){
  while( pTriggerStep ){
    TriggerStep * pTmp = pTriggerStep;
    pTriggerStep = pTriggerStep->pNext;

    sqlite3ExprDelete(db, pTmp->pWhere);
    sqlite3ExprListDelete(db, pTmp->pExprList);
    sqlite3SelectDelete(db, pTmp->pSelect);
    sqlite3IdListDelete(db, pTmp->pIdList);
    sqlite3UpsertDelete(db, pTmp->pUpsert);
    sqlite3DbFree(db, pTmp->zSpan);

    sqlite3DbFree(db, pTmp);
  }
}
