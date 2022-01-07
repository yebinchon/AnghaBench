
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_9__ {scalar_t__ op; } ;
struct TYPE_8__ {int nMem; int * pVdbe; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 int OP_Copy ;
 scalar_t__ TK_REGISTER ;
 int assert (int) ;
 int exprToRegister (TYPE_2__*,int) ;
 int sqlite3ExprCode (TYPE_1__*,TYPE_2__*,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;

void sqlite3ExprCodeAndCache(Parse *pParse, Expr *pExpr, int target){
  Vdbe *v = pParse->pVdbe;
  int iMem;

  assert( target>0 );
  assert( pExpr->op!=TK_REGISTER );
  sqlite3ExprCode(pParse, pExpr, target);
  iMem = ++pParse->nMem;
  sqlite3VdbeAddOp2(v, OP_Copy, target, iMem);
  exprToRegister(pExpr, iMem);
}
