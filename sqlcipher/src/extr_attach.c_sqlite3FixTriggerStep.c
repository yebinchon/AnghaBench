
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pUpsertWhere; int pUpsertSet; int pUpsertTargetWhere; int pUpsertTarget; } ;
typedef TYPE_1__ Upsert ;
struct TYPE_5__ {struct TYPE_5__* pNext; TYPE_1__* pUpsert; int pExprList; int pWhere; int pSelect; } ;
typedef TYPE_2__ TriggerStep ;
typedef int DbFixer ;


 scalar_t__ sqlite3FixExpr (int *,int ) ;
 scalar_t__ sqlite3FixExprList (int *,int ) ;
 scalar_t__ sqlite3FixSelect (int *,int ) ;

int sqlite3FixTriggerStep(
  DbFixer *pFix,
  TriggerStep *pStep
){
  while( pStep ){
    if( sqlite3FixSelect(pFix, pStep->pSelect) ){
      return 1;
    }
    if( sqlite3FixExpr(pFix, pStep->pWhere) ){
      return 1;
    }
    if( sqlite3FixExprList(pFix, pStep->pExprList) ){
      return 1;
    }

    if( pStep->pUpsert ){
      Upsert *pUp = pStep->pUpsert;
      if( sqlite3FixExprList(pFix, pUp->pUpsertTarget)
       || sqlite3FixExpr(pFix, pUp->pUpsertTargetWhere)
       || sqlite3FixExprList(pFix, pUp->pUpsertSet)
       || sqlite3FixExpr(pFix, pUp->pUpsertWhere)
      ){
        return 1;
      }
    }

    pStep = pStep->pNext;
  }
  return 0;
}
