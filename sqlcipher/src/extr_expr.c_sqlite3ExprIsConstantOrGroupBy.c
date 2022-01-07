
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pGroupBy; } ;
struct TYPE_5__ {int eCode; int * pParse; TYPE_1__ u; scalar_t__ xSelectCallback; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Parse ;
typedef int ExprList ;
typedef int Expr ;


 int exprNodeIsConstantOrGroupBy ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

int sqlite3ExprIsConstantOrGroupBy(Parse *pParse, Expr *p, ExprList *pGroupBy){
  Walker w;
  w.eCode = 1;
  w.xExprCallback = exprNodeIsConstantOrGroupBy;
  w.xSelectCallback = 0;
  w.u.pGroupBy = pGroupBy;
  w.pParse = pParse;
  sqlite3WalkExpr(&w, p);
  return w.eCode;
}
