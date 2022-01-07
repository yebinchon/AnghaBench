
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eType; struct TYPE_7__* pRight; struct TYPE_7__* pLeft; TYPE_1__* pPhrase; } ;
struct TYPE_6__ {int pSegcsr; int isPrefix; int n; int z; } ;
struct TYPE_5__ {int nToken; int iDoclistToken; TYPE_2__* aToken; } ;
typedef TYPE_2__ Fts3PhraseToken ;
typedef TYPE_3__ Fts3Expr ;
typedef int Fts3Cursor ;


 scalar_t__ FTSQUERY_OR ;
 scalar_t__ FTSQUERY_PHRASE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3TermSegReaderCursor (int *,int ,int ,int ,int *) ;

__attribute__((used)) static void fts3EvalAllocateReaders(
  Fts3Cursor *pCsr,
  Fts3Expr *pExpr,
  int *pnToken,
  int *pnOr,
  int *pRc
){
  if( pExpr && SQLITE_OK==*pRc ){
    if( pExpr->eType==FTSQUERY_PHRASE ){
      int i;
      int nToken = pExpr->pPhrase->nToken;
      *pnToken += nToken;
      for(i=0; i<nToken; i++){
        Fts3PhraseToken *pToken = &pExpr->pPhrase->aToken[i];
        int rc = fts3TermSegReaderCursor(pCsr,
            pToken->z, pToken->n, pToken->isPrefix, &pToken->pSegcsr
        );
        if( rc!=SQLITE_OK ){
          *pRc = rc;
          return;
        }
      }
      assert( pExpr->pPhrase->iDoclistToken==0 );
      pExpr->pPhrase->iDoclistToken = -1;
    }else{
      *pnOr += (pExpr->eType==FTSQUERY_OR);
      fts3EvalAllocateReaders(pCsr, pExpr->pLeft, pnToken, pnOr, pRc);
      fts3EvalAllocateReaders(pCsr, pExpr->pRight, pnToken, pnOr, pRc);
    }
  }
}
