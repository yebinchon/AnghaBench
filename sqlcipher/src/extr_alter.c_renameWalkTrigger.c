
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Walker ;
struct TYPE_5__ {int pUpsertTargetWhere; int pUpsertWhere; int pUpsertSet; int pUpsertTarget; } ;
typedef TYPE_1__ Upsert ;
struct TYPE_6__ {TYPE_1__* pUpsert; int pExprList; int pWhere; int pSelect; struct TYPE_6__* pNext; } ;
typedef TYPE_2__ TriggerStep ;
struct TYPE_7__ {TYPE_2__* step_list; int pWhen; } ;
typedef TYPE_3__ Trigger ;


 int sqlite3WalkExpr (int *,int ) ;
 int sqlite3WalkExprList (int *,int ) ;
 int sqlite3WalkSelect (int *,int ) ;

__attribute__((used)) static void renameWalkTrigger(Walker *pWalker, Trigger *pTrigger){
  TriggerStep *pStep;


  sqlite3WalkExpr(pWalker, pTrigger->pWhen);


  for(pStep=pTrigger->step_list; pStep; pStep=pStep->pNext){
    sqlite3WalkSelect(pWalker, pStep->pSelect);
    sqlite3WalkExpr(pWalker, pStep->pWhere);
    sqlite3WalkExprList(pWalker, pStep->pExprList);
    if( pStep->pUpsert ){
      Upsert *pUpsert = pStep->pUpsert;
      sqlite3WalkExprList(pWalker, pUpsert->pUpsertTarget);
      sqlite3WalkExprList(pWalker, pUpsert->pUpsertSet);
      sqlite3WalkExpr(pWalker, pUpsert->pUpsertWhere);
      sqlite3WalkExpr(pWalker, pUpsert->pUpsertTargetWhere);
    }
  }
}
