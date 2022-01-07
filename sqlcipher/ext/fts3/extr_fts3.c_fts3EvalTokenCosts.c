
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ eType; struct TYPE_12__* pRight; struct TYPE_12__* pLeft; TYPE_3__* pPhrase; } ;
struct TYPE_11__ {int nToken; int iColumn; TYPE_1__* aToken; } ;
struct TYPE_10__ {int iToken; int nOvfl; TYPE_1__* pToken; int iCol; TYPE_4__* pRoot; TYPE_3__* pPhrase; } ;
struct TYPE_9__ {int pSegcsr; } ;
typedef TYPE_2__ Fts3TokenAndCost ;
typedef TYPE_3__ Fts3Phrase ;
typedef TYPE_4__ Fts3Expr ;
typedef int Fts3Cursor ;


 scalar_t__ FTSQUERY_AND ;
 scalar_t__ FTSQUERY_NEAR ;
 scalar_t__ FTSQUERY_NOT ;
 scalar_t__ FTSQUERY_OR ;
 scalar_t__ FTSQUERY_PHRASE ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts3MsrOvfl (int *,int ,int *) ;

__attribute__((used)) static void fts3EvalTokenCosts(
  Fts3Cursor *pCsr,
  Fts3Expr *pRoot,
  Fts3Expr *pExpr,
  Fts3TokenAndCost **ppTC,
  Fts3Expr ***ppOr,
  int *pRc
){
  if( *pRc==SQLITE_OK ){
    if( pExpr->eType==FTSQUERY_PHRASE ){
      Fts3Phrase *pPhrase = pExpr->pPhrase;
      int i;
      for(i=0; *pRc==SQLITE_OK && i<pPhrase->nToken; i++){
        Fts3TokenAndCost *pTC = (*ppTC)++;
        pTC->pPhrase = pPhrase;
        pTC->iToken = i;
        pTC->pRoot = pRoot;
        pTC->pToken = &pPhrase->aToken[i];
        pTC->iCol = pPhrase->iColumn;
        *pRc = sqlite3Fts3MsrOvfl(pCsr, pTC->pToken->pSegcsr, &pTC->nOvfl);
      }
    }else if( pExpr->eType!=FTSQUERY_NOT ){
      assert( pExpr->eType==FTSQUERY_OR
           || pExpr->eType==FTSQUERY_AND
           || pExpr->eType==FTSQUERY_NEAR
      );
      assert( pExpr->pLeft && pExpr->pRight );
      if( pExpr->eType==FTSQUERY_OR ){
        pRoot = pExpr->pLeft;
        **ppOr = pRoot;
        (*ppOr)++;
      }
      fts3EvalTokenCosts(pCsr, pRoot, pExpr->pLeft, ppTC, ppOr, pRc);
      if( pExpr->eType==FTSQUERY_OR ){
        pRoot = pExpr->pRight;
        **ppOr = pRoot;
        (*ppOr)++;
      }
      fts3EvalTokenCosts(pCsr, pRoot, pExpr->pRight, ppTC, ppOr, pRc);
    }
  }
}
