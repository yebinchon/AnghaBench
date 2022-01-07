
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ iRoot; } ;
struct TYPE_10__ {int nRight; TYPE_7__* aRhs; TYPE_7__ lhs; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {int * pPg; TYPE_7__* pSeg; int iCell; TYPE_2__* pLevel; } ;
typedef TYPE_1__ SegmentPtr ;
typedef int Page ;
typedef int MultiCursor ;
typedef int LsmPgno ;
typedef TYPE_2__ Level ;


 int LSM_CORRUPT_BKPT ;
 int LSM_OK ;
 int lsmFsPageRef (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int ptrFwdPointer (int *,int ,TYPE_7__*,int *,int*) ;
 int segmentPtrReset (TYPE_1__*,int ) ;
 int sortedRhsFirst (int *,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int segmentPtrFwdPointer(
  MultiCursor *pCsr,
  SegmentPtr *pPtr,
  LsmPgno *piPtr
){
  Level *pLvl = pPtr->pLevel;
  Level *pNext = pLvl->pNext;
  Page *pPg = pPtr->pPg;
  int rc;
  int bFound;
  LsmPgno iOut = 0;

  if( pPtr->pSeg==&pLvl->lhs || pPtr->pSeg==&pLvl->aRhs[pLvl->nRight-1] ){
    if( pNext==0
        || (pNext->nRight==0 && pNext->lhs.iRoot)
        || (pNext->nRight!=0 && pNext->aRhs[0].iRoot)
      ){

      return LSM_OK;
    }
  }else{
    if( pPtr[1].pSeg->iRoot ){
      return LSM_OK;
    }
  }


  lsmFsPageRef(pPg);
  rc = ptrFwdPointer(pPg, pPtr->iCell, pPtr->pSeg, &iOut, &bFound);

  if( rc==LSM_OK && bFound==0 ){





    SegmentPtr ptr;

    if( pPtr->pLevel->nRight==0 || pPtr->pSeg!=&pPtr->pLevel->lhs ){
      return LSM_CORRUPT_BKPT;
    }

    memset(&ptr, 0, sizeof(SegmentPtr));
    ptr.pLevel = pPtr->pLevel;
    ptr.pSeg = &ptr.pLevel->aRhs[ptr.pLevel->nRight-1];
    rc = sortedRhsFirst(pCsr, ptr.pLevel, &ptr);
    if( rc==LSM_OK ){
      rc = ptrFwdPointer(ptr.pPg, ptr.iCell, ptr.pSeg, &iOut, &bFound);
      ptr.pPg = 0;
    }
    segmentPtrReset(&ptr, 0);
  }

  *piPtr = iOut;
  return rc;
}
