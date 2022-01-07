
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int exprIsConst (int *,int,int ) ;

int sqlite3ExprIsConstantNotJoin(Expr *p){
  return exprIsConst(p, 2, 0);
}
