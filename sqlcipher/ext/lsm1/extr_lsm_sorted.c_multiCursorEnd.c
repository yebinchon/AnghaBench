
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int nRight; int * aRhs; int lhs; } ;
struct TYPE_13__ {int flags; int nPtr; scalar_t__ pBtCsr; TYPE_1__* aPtr; scalar_t__* apTreeCsr; scalar_t__ iFree; } ;
struct TYPE_12__ {scalar_t__ pKey; int * pSeg; scalar_t__ pPg; TYPE_3__* pLevel; } ;
typedef TYPE_1__ SegmentPtr ;
typedef TYPE_2__ MultiCursor ;
typedef TYPE_3__ Level ;


 int CURSOR_NEXT_OK ;
 int CURSOR_PREV_OK ;
 int CURSOR_SEEK_EQ ;
 int LSM_OK ;
 int LSM_SEGMENTPTR_FREE_THRESHOLD ;
 int assert (int) ;
 int btreeCursorFirst (scalar_t__) ;
 int lsmTreeCursorEnd (scalar_t__,int) ;
 int multiCursorSetupTree (TYPE_2__*,int) ;
 int segmentPtrEnd (TYPE_2__*,TYPE_1__*,int) ;
 int segmentPtrReset (TYPE_1__*,int ) ;
 int sortedRhsFirst (TYPE_2__*,TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static int multiCursorEnd(MultiCursor *pCsr, int bLast){
  int rc = LSM_OK;
  int i;

  pCsr->flags &= ~(CURSOR_NEXT_OK | CURSOR_PREV_OK | CURSOR_SEEK_EQ);
  pCsr->flags |= (bLast ? CURSOR_PREV_OK : CURSOR_NEXT_OK);
  pCsr->iFree = 0;


  for(i=0; rc==LSM_OK && i<2; i++){
    if( pCsr->apTreeCsr[i] ){
      rc = lsmTreeCursorEnd(pCsr->apTreeCsr[i], bLast);
    }
  }

  for(i=0; rc==LSM_OK && i<pCsr->nPtr; i++){
    SegmentPtr *pPtr = &pCsr->aPtr[i];
    Level *pLvl = pPtr->pLevel;
    int iRhs;
    int bHit = 0;

    if( bLast ){
      for(iRhs=0; iRhs<pLvl->nRight && rc==LSM_OK; iRhs++){
        rc = segmentPtrEnd(pCsr, &pPtr[iRhs+1], 1);
        if( pPtr[iRhs+1].pPg ) bHit = 1;
      }
      if( bHit==0 && rc==LSM_OK ){
        rc = segmentPtrEnd(pCsr, pPtr, 1);
      }else{
        segmentPtrReset(pPtr, LSM_SEGMENTPTR_FREE_THRESHOLD);
      }
    }else{
      int bLhs = (pPtr->pSeg==&pLvl->lhs);
      assert( pPtr->pSeg==&pLvl->lhs || pPtr->pSeg==&pLvl->aRhs[0] );

      if( bLhs ){
        rc = segmentPtrEnd(pCsr, pPtr, 0);
        if( pPtr->pKey ) bHit = 1;
      }
      for(iRhs=0; iRhs<pLvl->nRight && rc==LSM_OK; iRhs++){
        if( bHit ){
          segmentPtrReset(&pPtr[iRhs+1], LSM_SEGMENTPTR_FREE_THRESHOLD);
        }else{
          rc = sortedRhsFirst(pCsr, pLvl, &pPtr[iRhs+bLhs]);
        }
      }
    }
    i += pLvl->nRight;
  }


  if( rc==LSM_OK && pCsr->pBtCsr ){
    assert( bLast==0 );
    rc = btreeCursorFirst(pCsr->pBtCsr);
  }

  if( rc==LSM_OK ){
    rc = multiCursorSetupTree(pCsr, bLast);
  }

  return rc;
}
