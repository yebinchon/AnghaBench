
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pVtab; } ;
struct TYPE_12__ {TYPE_1__ base; } ;
struct TYPE_11__ {int nToken; int iColumn; TYPE_2__* aToken; } ;
struct TYPE_10__ {scalar_t__ pDeferred; scalar_t__ pSegcsr; } ;
typedef int Fts3Table ;
typedef TYPE_2__ Fts3PhraseToken ;
typedef TYPE_3__ Fts3Phrase ;
typedef TYPE_4__ Fts3Cursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3EvalPhraseMergeToken (int *,TYPE_3__*,int,char*,int) ;
 int fts3TermSelect (int *,TYPE_2__*,int ,int*,char**) ;

__attribute__((used)) static int fts3EvalPhraseLoad(
  Fts3Cursor *pCsr,
  Fts3Phrase *p
){
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  int iToken;
  int rc = SQLITE_OK;

  for(iToken=0; rc==SQLITE_OK && iToken<p->nToken; iToken++){
    Fts3PhraseToken *pToken = &p->aToken[iToken];
    assert( pToken->pDeferred==0 || pToken->pSegcsr==0 );

    if( pToken->pSegcsr ){
      int nThis = 0;
      char *pThis = 0;
      rc = fts3TermSelect(pTab, pToken, p->iColumn, &nThis, &pThis);
      if( rc==SQLITE_OK ){
        rc = fts3EvalPhraseMergeToken(pTab, p, iToken, pThis, nThis);
      }
    }
    assert( pToken->pSegcsr==0 );
  }

  return rc;
}
