
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nCol; int * aMatchinfo; int pCursor; } ;
typedef TYPE_1__ MatchInfo ;
typedef int Fts3Expr ;


 int sqlite3Fts3EvalPhraseStats (int ,int *,int *) ;

__attribute__((used)) static int fts3ExprGlobalHitsCb(
  Fts3Expr *pExpr,
  int iPhrase,
  void *pCtx
){
  MatchInfo *p = (MatchInfo *)pCtx;
  return sqlite3Fts3EvalPhraseStats(
      p->pCursor, pExpr, &p->aMatchinfo[3*iPhrase*p->nCol]
  );
}
