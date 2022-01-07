
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ nRight; int lhs; int * aRhs; } ;
struct TYPE_14__ {scalar_t__ nPtr; int nTree; TYPE_1__* aPtr; } ;
struct TYPE_13__ {scalar_t__ pPg; int * pSeg; TYPE_3__* pLevel; } ;
typedef TYPE_1__ SegmentPtr ;
typedef TYPE_2__ MultiCursor ;
typedef TYPE_3__ Level ;


 int LSM_OK ;
 int multiCursorDoCompare (TYPE_2__*,int,int) ;
 int segmentPtrAdvance (TYPE_2__*,TYPE_1__*,int) ;
 int segmentPtrEnd (TYPE_2__*,TYPE_1__*,int) ;
 int sortedRhsFirst (TYPE_2__*,TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static int segmentCursorAdvance(
  MultiCursor *pCsr,
  int iPtr,
  int bReverse
){
  int rc;
  SegmentPtr *pPtr = &pCsr->aPtr[iPtr];
  Level *pLvl = pPtr->pLevel;
  int bComposite;


  rc = segmentPtrAdvance(pCsr, pPtr, bReverse);
  if( rc!=LSM_OK ) return rc;

  bComposite = (pLvl->nRight>0 && pCsr->nPtr>pLvl->nRight);
  if( bComposite && pPtr->pPg==0 ){
    int bFix = 0;
    if( (bReverse==0)==(pPtr->pSeg==&pLvl->lhs) ){
      int i;
      if( bReverse ){
        SegmentPtr *pLhs = &pCsr->aPtr[iPtr - 1 - (pPtr->pSeg - pLvl->aRhs)];
        for(i=0; i<pLvl->nRight; i++){
          if( pLhs[i+1].pPg ) break;
        }
        if( i==pLvl->nRight ){
          bFix = 1;
          rc = segmentPtrEnd(pCsr, pLhs, 1);
        }
      }else{
        bFix = 1;
        for(i=0; rc==LSM_OK && i<pLvl->nRight; i++){
          rc = sortedRhsFirst(pCsr, pLvl, &pCsr->aPtr[iPtr+1+i]);
        }
      }
    }

    if( bFix ){
      int i;
      for(i=pCsr->nTree-1; i>0; i--){
        multiCursorDoCompare(pCsr, i, bReverse);
      }
    }
  }
  return rc;
}
