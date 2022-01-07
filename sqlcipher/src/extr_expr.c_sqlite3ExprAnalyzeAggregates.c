
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* pNC; } ;
struct TYPE_7__ {scalar_t__ pParse; TYPE_1__ u; scalar_t__ walkerDepth; int xSelectCallback2; int xSelectCallback; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
struct TYPE_8__ {scalar_t__ pSrcList; } ;
typedef TYPE_3__ NameContext ;
typedef int Expr ;


 int analyzeAggregate ;
 int analyzeAggregatesInSelect ;
 int analyzeAggregatesInSelectEnd ;
 int assert (int) ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

void sqlite3ExprAnalyzeAggregates(NameContext *pNC, Expr *pExpr){
  Walker w;
  w.xExprCallback = analyzeAggregate;
  w.xSelectCallback = analyzeAggregatesInSelect;
  w.xSelectCallback2 = analyzeAggregatesInSelectEnd;
  w.walkerDepth = 0;
  w.u.pNC = pNC;
  w.pParse = 0;
  assert( pNC->pSrcList!=0 );
  sqlite3WalkExpr(&w, pExpr);
}
