
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pVtab; } ;
struct TYPE_11__ {int pExpr; TYPE_1__ base; } ;
struct TYPE_10__ {scalar_t__ bFts4; } ;
typedef int Fts3TokenAndCost ;
typedef TYPE_2__ Fts3Table ;
typedef int Fts3Expr ;
typedef TYPE_3__ Fts3Cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts3EvalAllocateReaders (TYPE_3__*,int ,int*,int*,int*) ;
 int fts3EvalSelectDeferred (TYPE_3__*,int *,int *,int) ;
 int fts3EvalStartReaders (TYPE_3__*,int ,int*) ;
 int fts3EvalTokenCosts (TYPE_3__*,int ,int ,int **,int ***,int*) ;
 int sqlite3_free (int *) ;
 scalar_t__ sqlite3_malloc64 (int) ;

__attribute__((used)) static int fts3EvalStart(Fts3Cursor *pCsr){
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  int rc = SQLITE_OK;
  int nToken = 0;
  int nOr = 0;


  fts3EvalAllocateReaders(pCsr, pCsr->pExpr, &nToken, &nOr, &rc);



  if( rc==SQLITE_OK && nToken>1 && pTab->bFts4 ){
    Fts3TokenAndCost *aTC;
    Fts3Expr **apOr;
    aTC = (Fts3TokenAndCost *)sqlite3_malloc64(
        sizeof(Fts3TokenAndCost) * nToken
      + sizeof(Fts3Expr *) * nOr * 2
    );
    apOr = (Fts3Expr **)&aTC[nToken];

    if( !aTC ){
      rc = SQLITE_NOMEM;
    }else{
      int ii;
      Fts3TokenAndCost *pTC = aTC;
      Fts3Expr **ppOr = apOr;

      fts3EvalTokenCosts(pCsr, 0, pCsr->pExpr, &pTC, &ppOr, &rc);
      nToken = (int)(pTC-aTC);
      nOr = (int)(ppOr-apOr);

      if( rc==SQLITE_OK ){
        rc = fts3EvalSelectDeferred(pCsr, 0, aTC, nToken);
        for(ii=0; rc==SQLITE_OK && ii<nOr; ii++){
          rc = fts3EvalSelectDeferred(pCsr, apOr[ii], aTC, nToken);
        }
      }

      sqlite3_free(aTC);
    }
  }


  fts3EvalStartReaders(pCsr, pCsr->pExpr, &rc);
  return rc;
}
