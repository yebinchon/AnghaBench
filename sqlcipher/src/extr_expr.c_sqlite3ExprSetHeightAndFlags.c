
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nHeight; } ;
struct TYPE_7__ {scalar_t__ nErr; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 int exprSetHeight (TYPE_2__*) ;
 int sqlite3ExprCheckHeight (TYPE_1__*,int ) ;

void sqlite3ExprSetHeightAndFlags(Parse *pParse, Expr *p){
  if( pParse->nErr ) return;
  exprSetHeight(p);
  sqlite3ExprCheckHeight(pParse, p->nHeight);
}
