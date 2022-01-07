
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Walker ;
typedef int Expr ;


 int WRC_Continue ;
 int walkExpr (int *,int *) ;

int sqlite3WalkExpr(Walker *pWalker, Expr *pExpr){
  return pExpr ? walkExpr(pWalker,pExpr) : WRC_Continue;
}
