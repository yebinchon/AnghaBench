
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int op; } ;
typedef TYPE_1__ WhereClause ;
struct TYPE_10__ {struct TYPE_10__* pRight; struct TYPE_10__* pLeft; int op; } ;
typedef TYPE_2__ Expr ;


 TYPE_2__* sqlite3ExprSkipCollate (TYPE_2__*) ;
 int whereClauseInsert (TYPE_1__*,TYPE_2__*,int ) ;

void sqlite3WhereSplit(WhereClause *pWC, Expr *pExpr, u8 op){
  Expr *pE2 = sqlite3ExprSkipCollate(pExpr);
  pWC->op = op;
  if( pE2==0 ) return;
  if( pE2->op!=op ){
    whereClauseInsert(pWC, pExpr, 0);
  }else{
    sqlite3WhereSplit(pWC, pE2->pLeft, op);
    sqlite3WhereSplit(pWC, pE2->pRight, op);
  }
}
