
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int sqlite3ExprCompare (int ,int ,int ,int) ;
 int sqlite3ExprSkipCollate (int *) ;

int sqlite3ExprCompareSkip(Expr *pA, Expr *pB, int iTab){
  return sqlite3ExprCompare(0,
             sqlite3ExprSkipCollate(pA),
             sqlite3ExprSkipCollate(pB),
             iTab);
}
