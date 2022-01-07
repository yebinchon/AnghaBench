
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_7__ {int orconf; int * pWhere; int * pExprList; } ;
typedef TYPE_1__ TriggerStep ;
typedef int Token ;
struct TYPE_8__ {int * db; } ;
typedef TYPE_2__ Parse ;
typedef int ExprList ;
typedef int Expr ;


 int EXPRDUP_REDUCE ;
 scalar_t__ IN_RENAME_OBJECT ;
 int TK_UPDATE ;
 int sqlite3ExprDelete (int *,int *) ;
 int * sqlite3ExprDup (int *,int *,int ) ;
 int sqlite3ExprListDelete (int *,int *) ;
 int * sqlite3ExprListDup (int *,int *,int ) ;
 TYPE_1__* triggerStepAllocate (TYPE_2__*,int ,int *,char const*,char const*) ;

TriggerStep *sqlite3TriggerUpdateStep(
  Parse *pParse,
  Token *pTableName,
  ExprList *pEList,
  Expr *pWhere,
  u8 orconf,
  const char *zStart,
  const char *zEnd
){
  sqlite3 *db = pParse->db;
  TriggerStep *pTriggerStep;

  pTriggerStep = triggerStepAllocate(pParse, TK_UPDATE, pTableName,zStart,zEnd);
  if( pTriggerStep ){
    if( IN_RENAME_OBJECT ){
      pTriggerStep->pExprList = pEList;
      pTriggerStep->pWhere = pWhere;
      pEList = 0;
      pWhere = 0;
    }else{
      pTriggerStep->pExprList = sqlite3ExprListDup(db, pEList, EXPRDUP_REDUCE);
      pTriggerStep->pWhere = sqlite3ExprDup(db, pWhere, EXPRDUP_REDUCE);
    }
    pTriggerStep->orconf = orconf;
  }
  sqlite3ExprListDelete(db, pEList);
  sqlite3ExprDelete(db, pWhere);
  return pTriggerStep;
}
