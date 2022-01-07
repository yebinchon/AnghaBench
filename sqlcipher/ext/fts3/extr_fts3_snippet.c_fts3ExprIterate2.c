
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int eType; struct TYPE_5__* pRight; struct TYPE_5__* pLeft; } ;
typedef TYPE_1__ Fts3Expr ;


 int FTSQUERY_NOT ;
 int FTSQUERY_PHRASE ;
 int SQLITE_OK ;
 int assert (int) ;

__attribute__((used)) static int fts3ExprIterate2(
  Fts3Expr *pExpr,
  int *piPhrase,
  int (*x)(Fts3Expr*,int,void*),
  void *pCtx
){
  int rc;
  int eType = pExpr->eType;

  if( eType!=FTSQUERY_PHRASE ){
    assert( pExpr->pLeft && pExpr->pRight );
    rc = fts3ExprIterate2(pExpr->pLeft, piPhrase, x, pCtx);
    if( rc==SQLITE_OK && eType!=FTSQUERY_NOT ){
      rc = fts3ExprIterate2(pExpr->pRight, piPhrase, x, pCtx);
    }
  }else{
    rc = x(pExpr, *piPhrase, pCtx);
    (*piPhrase)++;
  }
  return rc;
}
