
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_21__ {scalar_t__ pPage; TYPE_6__* aSave; TYPE_5__* pDb; TYPE_3__* pLevel; TYPE_8__* pCsr; } ;
struct TYPE_20__ {int nPtr; int* pPrevMergePtr; TYPE_4__* aPtr; scalar_t__ pBtCsr; } ;
struct TYPE_19__ {int iFirst; } ;
struct TYPE_18__ {int bStore; } ;
struct TYPE_17__ {int pFS; } ;
struct TYPE_16__ {TYPE_7__* pSeg; } ;
struct TYPE_15__ {TYPE_2__* pNext; } ;
struct TYPE_13__ {scalar_t__ iFirst; } ;
struct TYPE_14__ {TYPE_1__ lhs; } ;
typedef TYPE_7__ Segment ;
typedef int Page ;
typedef TYPE_8__ MultiCursor ;
typedef TYPE_9__ MergeWorker ;


 int LSM_OK ;
 int assert (int) ;
 int * fsPageData (int *,int*) ;
 int lsmFsDbPageGet (int ,TYPE_7__*,int ,int **) ;
 int lsmFsPageRelease (int *) ;
 int mergeWorkerNextPage (TYPE_9__*,int) ;
 scalar_t__ pageGetPtr (int *,int) ;

__attribute__((used)) static int mergeWorkerFirstPage(MergeWorker *pMW){
  int rc = LSM_OK;
  Page *pPg = 0;
  int iFPtr = 0;
  MultiCursor *pCsr = pMW->pCsr;

  assert( pMW->pPage==0 );

  if( pCsr->pBtCsr ){
    rc = LSM_OK;
    iFPtr = (int)pMW->pLevel->pNext->lhs.iFirst;
  }else if( pCsr->nPtr>0 ){
    Segment *pSeg;
    pSeg = pCsr->aPtr[pCsr->nPtr-1].pSeg;
    rc = lsmFsDbPageGet(pMW->pDb->pFS, pSeg, pSeg->iFirst, &pPg);
    if( rc==LSM_OK ){
      u8 *aData;
      int nData;
      aData = fsPageData(pPg, &nData);
      iFPtr = (int)pageGetPtr(aData, nData);
      lsmFsPageRelease(pPg);
    }
  }

  if( rc==LSM_OK ){
    rc = mergeWorkerNextPage(pMW, iFPtr);
    if( pCsr->pPrevMergePtr ) *pCsr->pPrevMergePtr = iFPtr;
    pMW->aSave[0].bStore = 1;
  }

  return rc;
}
