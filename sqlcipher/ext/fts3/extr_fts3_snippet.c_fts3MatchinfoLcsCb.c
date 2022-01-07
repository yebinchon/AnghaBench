
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pExpr; } ;
typedef TYPE_1__ LcsIterator ;
typedef int Fts3Expr ;


 int SQLITE_OK ;

__attribute__((used)) static int fts3MatchinfoLcsCb(
  Fts3Expr *pExpr,
  int iPhrase,
  void *pCtx
){
  LcsIterator *aIter = (LcsIterator *)pCtx;
  aIter[iPhrase].pExpr = pExpr;
  return SQLITE_OK;
}
