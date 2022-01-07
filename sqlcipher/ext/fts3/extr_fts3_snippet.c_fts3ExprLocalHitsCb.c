
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nCol; int * aMatchinfo; int pCursor; } ;
typedef TYPE_1__ MatchInfo ;
typedef int Fts3Expr ;


 int SQLITE_OK ;
 int fts3ColumnlistCount (char**) ;
 int sqlite3Fts3EvalPhrasePoslist (int ,int *,int,char**) ;

__attribute__((used)) static int fts3ExprLocalHitsCb(
  Fts3Expr *pExpr,
  int iPhrase,
  void *pCtx
){
  int rc = SQLITE_OK;
  MatchInfo *p = (MatchInfo *)pCtx;
  int iStart = iPhrase * p->nCol * 3;
  int i;

  for(i=0; i<p->nCol && rc==SQLITE_OK; i++){
    char *pCsr;
    rc = sqlite3Fts3EvalPhrasePoslist(p->pCursor, pExpr, i, &pCsr);
    if( pCsr ){
      p->aMatchinfo[iStart+i*3] = fts3ColumnlistCount(&pCsr);
    }else{
      p->aMatchinfo[iStart+i*3] = 0;
    }
  }

  return rc;
}
