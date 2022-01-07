
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* pPhrase; } ;
struct TYPE_16__ {int nPhrase; int pExpr; } ;
struct TYPE_15__ {int iPosOffset; scalar_t__ pRead; scalar_t__ iPos; TYPE_8__* pExpr; } ;
struct TYPE_14__ {int nPhrase; int nCol; int* aMatchinfo; } ;
struct TYPE_13__ {scalar_t__ nToken; } ;
typedef TYPE_2__ MatchInfo ;
typedef TYPE_3__ LcsIterator ;
typedef TYPE_4__ Fts3Cursor ;


 int FTS_CORRUPT_VTAB ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts3ExprIterate (int ,int ,void*) ;
 scalar_t__ fts3LcsIteratorAdvance (TYPE_3__*) ;
 int fts3MatchinfoLcsCb ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3Fts3EvalPhrasePoslist (TYPE_4__*,TYPE_8__*,int,scalar_t__*) ;
 int sqlite3_free (TYPE_3__*) ;
 TYPE_3__* sqlite3_malloc64 (int) ;

__attribute__((used)) static int fts3MatchinfoLcs(Fts3Cursor *pCsr, MatchInfo *pInfo){
  LcsIterator *aIter;
  int i;
  int iCol;
  int nToken = 0;
  int rc = SQLITE_OK;




  aIter = sqlite3_malloc64(sizeof(LcsIterator) * pCsr->nPhrase);
  if( !aIter ) return SQLITE_NOMEM;
  memset(aIter, 0, sizeof(LcsIterator) * pCsr->nPhrase);
  (void)fts3ExprIterate(pCsr->pExpr, fts3MatchinfoLcsCb, (void*)aIter);

  for(i=0; i<pInfo->nPhrase; i++){
    LcsIterator *pIter = &aIter[i];
    nToken -= pIter->pExpr->pPhrase->nToken;
    pIter->iPosOffset = nToken;
  }

  for(iCol=0; iCol<pInfo->nCol; iCol++){
    int nLcs = 0;
    int nLive = 0;

    for(i=0; i<pInfo->nPhrase; i++){
      LcsIterator *pIt = &aIter[i];
      rc = sqlite3Fts3EvalPhrasePoslist(pCsr, pIt->pExpr, iCol, &pIt->pRead);
      if( rc!=SQLITE_OK ) goto matchinfo_lcs_out;
      if( pIt->pRead ){
        pIt->iPos = pIt->iPosOffset;
        fts3LcsIteratorAdvance(pIt);
        if( pIt->pRead==0 ){
          rc = FTS_CORRUPT_VTAB;
          goto matchinfo_lcs_out;
        }
        nLive++;
      }
    }

    while( nLive>0 ){
      LcsIterator *pAdv = 0;
      int nThisLcs = 0;

      for(i=0; i<pInfo->nPhrase; i++){
        LcsIterator *pIter = &aIter[i];
        if( pIter->pRead==0 ){

          nThisLcs = 0;
        }else{
          if( pAdv==0 || pIter->iPos<pAdv->iPos ){
            pAdv = pIter;
          }
          if( nThisLcs==0 || pIter->iPos==pIter[-1].iPos ){
            nThisLcs++;
          }else{
            nThisLcs = 1;
          }
          if( nThisLcs>nLcs ) nLcs = nThisLcs;
        }
      }
      if( fts3LcsIteratorAdvance(pAdv) ) nLive--;
    }

    pInfo->aMatchinfo[iCol] = nLcs;
  }

 matchinfo_lcs_out:
  sqlite3_free(aIter);
  return rc;
}
