
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int sqlite3ExprVectorSize (int *) ;

int sqlite3ExprIsVector(Expr *pExpr){
  return sqlite3ExprVectorSize(pExpr)>1;
}
