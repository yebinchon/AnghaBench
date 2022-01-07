
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts3Expr ;


 int fts3ExprIterate2 (int *,int*,int (*) (int *,int,void*),void*) ;

__attribute__((used)) static int fts3ExprIterate(
  Fts3Expr *pExpr,
  int (*x)(Fts3Expr*,int,void*),
  void *pCtx
){
  int iPhrase = 0;
  return fts3ExprIterate2(pExpr, &iPhrase, x, pCtx);
}
