
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pExpr; } ;
typedef TYPE_1__ Fts5Parse ;
typedef int Fts5ExprNode ;


 int assert (int) ;

void sqlite3Fts5ParseFinished(Fts5Parse *pParse, Fts5ExprNode *p){
  assert( pParse->pExpr==0 );
  pParse->pExpr = p;
}
