
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {int orconf; int * pWhere; } ;
typedef TYPE_1__ TriggerStep ;
typedef int Token ;
struct TYPE_8__ {int * db; } ;
typedef TYPE_2__ Parse ;
typedef int Expr ;


 int EXPRDUP_REDUCE ;
 scalar_t__ IN_RENAME_OBJECT ;
 int OE_Default ;
 int TK_DELETE ;
 int sqlite3ExprDelete (int *,int *) ;
 int * sqlite3ExprDup (int *,int *,int ) ;
 TYPE_1__* triggerStepAllocate (TYPE_2__*,int ,int *,char const*,char const*) ;

TriggerStep *sqlite3TriggerDeleteStep(
  Parse *pParse,
  Token *pTableName,
  Expr *pWhere,
  const char *zStart,
  const char *zEnd
){
  sqlite3 *db = pParse->db;
  TriggerStep *pTriggerStep;

  pTriggerStep = triggerStepAllocate(pParse, TK_DELETE, pTableName,zStart,zEnd);
  if( pTriggerStep ){
    if( IN_RENAME_OBJECT ){
      pTriggerStep->pWhere = pWhere;
      pWhere = 0;
    }else{
      pTriggerStep->pWhere = sqlite3ExprDup(db, pWhere, EXPRDUP_REDUCE);
    }
    pTriggerStep->orconf = OE_Default;
  }
  sqlite3ExprDelete(db, pWhere);
  return pTriggerStep;
}
