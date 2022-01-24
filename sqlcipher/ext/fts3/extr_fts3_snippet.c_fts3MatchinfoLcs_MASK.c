#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* pPhrase; } ;
struct TYPE_16__ {int nPhrase; int /*<<< orphan*/  pExpr; } ;
struct TYPE_15__ {int iPosOffset; scalar_t__ pRead; scalar_t__ iPos; TYPE_8__* pExpr; } ;
struct TYPE_14__ {int nPhrase; int nCol; int* aMatchinfo; } ;
struct TYPE_13__ {scalar_t__ nToken; } ;
typedef  TYPE_2__ MatchInfo ;
typedef  TYPE_3__ LcsIterator ;
typedef  TYPE_4__ Fts3Cursor ;

/* Variables and functions */
 int FTS_CORRUPT_VTAB ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  fts3MatchinfoLcsCb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_4__*,TYPE_8__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(Fts3Cursor *pCsr, MatchInfo *pInfo){
  LcsIterator *aIter;
  int i;
  int iCol;
  int nToken = 0;
  int rc = SQLITE_OK;

  /* Allocate and populate the array of LcsIterator objects. The array
  ** contains one element for each matchable phrase in the query.
  **/
  aIter = FUNC5(sizeof(LcsIterator) * pCsr->nPhrase);
  if( !aIter ) return SQLITE_NOMEM;
  FUNC2(aIter, 0, sizeof(LcsIterator) * pCsr->nPhrase);
  (void)FUNC0(pCsr->pExpr, fts3MatchinfoLcsCb, (void*)aIter);

  for(i=0; i<pInfo->nPhrase; i++){
    LcsIterator *pIter = &aIter[i];
    nToken -= pIter->pExpr->pPhrase->nToken;
    pIter->iPosOffset = nToken;
  }

  for(iCol=0; iCol<pInfo->nCol; iCol++){
    int nLcs = 0;                 /* LCS value for this column */
    int nLive = 0;                /* Number of iterators in aIter not at EOF */

    for(i=0; i<pInfo->nPhrase; i++){
      LcsIterator *pIt = &aIter[i];
      rc = FUNC3(pCsr, pIt->pExpr, iCol, &pIt->pRead);
      if( rc!=SQLITE_OK ) goto matchinfo_lcs_out;
      if( pIt->pRead ){
        pIt->iPos = pIt->iPosOffset;
        FUNC1(pIt);
        if( pIt->pRead==0 ){
          rc = FTS_CORRUPT_VTAB;
          goto matchinfo_lcs_out;
        }
        nLive++;
      }
    }

    while( nLive>0 ){
      LcsIterator *pAdv = 0;      /* The iterator to advance by one position */
      int nThisLcs = 0;           /* LCS for the current iterator positions */

      for(i=0; i<pInfo->nPhrase; i++){
        LcsIterator *pIter = &aIter[i];
        if( pIter->pRead==0 ){
          /* This iterator is already at EOF for this column. */
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
      if( FUNC1(pAdv) ) nLive--;
    }

    pInfo->aMatchinfo[iCol] = nLcs;
  }

 matchinfo_lcs_out:
  FUNC4(aIter);
  return rc;
}