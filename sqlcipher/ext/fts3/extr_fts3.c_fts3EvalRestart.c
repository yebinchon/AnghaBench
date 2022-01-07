
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* pRight; struct TYPE_11__* pLeft; scalar_t__ bStart; scalar_t__ bEof; scalar_t__ iDocid; TYPE_3__* pPhrase; } ;
struct TYPE_8__ {scalar_t__ iDocid; scalar_t__ pNextDocid; } ;
struct TYPE_10__ {int nToken; scalar_t__ pOrPoslist; TYPE_1__ doclist; TYPE_2__* aToken; scalar_t__ bIncr; } ;
struct TYPE_9__ {scalar_t__ pDeferred; scalar_t__ pSegcsr; } ;
typedef TYPE_2__ Fts3PhraseToken ;
typedef TYPE_3__ Fts3Phrase ;
typedef TYPE_4__ Fts3Expr ;
typedef int Fts3Cursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3EvalInvalidatePoslist (TYPE_3__*) ;
 int fts3EvalPhraseStart (int *,int ,TYPE_3__*) ;
 int sqlite3Fts3MsrIncrRestart (scalar_t__) ;

__attribute__((used)) static void fts3EvalRestart(
  Fts3Cursor *pCsr,
  Fts3Expr *pExpr,
  int *pRc
){
  if( pExpr && *pRc==SQLITE_OK ){
    Fts3Phrase *pPhrase = pExpr->pPhrase;

    if( pPhrase ){
      fts3EvalInvalidatePoslist(pPhrase);
      if( pPhrase->bIncr ){
        int i;
        for(i=0; i<pPhrase->nToken; i++){
          Fts3PhraseToken *pToken = &pPhrase->aToken[i];
          assert( pToken->pDeferred==0 );
          if( pToken->pSegcsr ){
            sqlite3Fts3MsrIncrRestart(pToken->pSegcsr);
          }
        }
        *pRc = fts3EvalPhraseStart(pCsr, 0, pPhrase);
      }
      pPhrase->doclist.pNextDocid = 0;
      pPhrase->doclist.iDocid = 0;
      pPhrase->pOrPoslist = 0;
    }

    pExpr->iDocid = 0;
    pExpr->bEof = 0;
    pExpr->bStart = 0;

    fts3EvalRestart(pCsr, pExpr->pLeft, pRc);
    fts3EvalRestart(pCsr, pExpr->pRight, pRc);
  }
}
