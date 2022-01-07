
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int iSplitTopic; int nSplitKey; int pSplitKey; scalar_t__ nRight; int lhs; } ;
struct TYPE_17__ {TYPE_1__* pDb; } ;
struct TYPE_16__ {scalar_t__ nCell; int flags; int eType; scalar_t__ nVal; scalar_t__ pVal; int nKey; int pKey; int iCell; int * pSeg; scalar_t__ pPg; TYPE_4__* pLevel; } ;
struct TYPE_15__ {int xCmp; int * pFS; } ;
typedef TYPE_2__ SegmentPtr ;
typedef TYPE_3__ MultiCursor ;
typedef TYPE_4__ Level ;
typedef int FileSystem ;


 int LSM_END_DELETE ;
 int LSM_OK ;
 int LSM_SEGMENTPTR_FREE_THRESHOLD ;
 int LSM_START_DELETE ;
 int SEGMENT_BTREE_FLAG ;
 scalar_t__ rtIsSeparator (int) ;
 int rtTopic (int) ;
 int segmentPtrAdvance (TYPE_3__*,TYPE_2__*,int) ;
 int segmentPtrEndPage (int *,TYPE_2__*,int,int*) ;
 int segmentPtrIgnoreSeparators (TYPE_3__*,TYPE_2__*) ;
 int segmentPtrLoadCell (TYPE_2__*,scalar_t__) ;
 int segmentPtrNextPage (TYPE_2__*,int) ;
 int segmentPtrReset (TYPE_2__*,int ) ;
 int sortedKeyCompare (int ,int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static int segmentPtrEnd(MultiCursor *pCsr, SegmentPtr *pPtr, int bLast){
  Level *pLvl = pPtr->pLevel;
  int rc = LSM_OK;
  FileSystem *pFS = pCsr->pDb->pFS;
  int bIgnore;

  segmentPtrEndPage(pFS, pPtr, bLast, &rc);
  while( rc==LSM_OK && pPtr->pPg
      && (pPtr->nCell==0 || (pPtr->flags & SEGMENT_BTREE_FLAG))
  ){
    rc = segmentPtrNextPage(pPtr, (bLast ? -1 : 1));
  }

  if( rc==LSM_OK && pPtr->pPg ){
    rc = segmentPtrLoadCell(pPtr, bLast ? (pPtr->nCell-1) : 0);
    if( rc==LSM_OK && bLast && pPtr->pSeg!=&pLvl->lhs ){
      int res = sortedKeyCompare(pCsr->pDb->xCmp,
          rtTopic(pPtr->eType), pPtr->pKey, pPtr->nKey,
          pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey
      );
      if( res<0 ) segmentPtrReset(pPtr, LSM_SEGMENTPTR_FREE_THRESHOLD);
    }
  }

  bIgnore = segmentPtrIgnoreSeparators(pCsr, pPtr);
  if( rc==LSM_OK && pPtr->pPg && bIgnore && rtIsSeparator(pPtr->eType) ){
    rc = segmentPtrAdvance(pCsr, pPtr, bLast);
  }
  return rc;
}
