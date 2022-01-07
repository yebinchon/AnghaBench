
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {scalar_t__ xCompress; } ;
struct TYPE_12__ {TYPE_2__ compress; int pWorker; int pFS; } ;
typedef TYPE_4__ lsm_db ;
struct TYPE_9__ {scalar_t__ iFirst; } ;
struct TYPE_14__ {TYPE_3__* pMerge; TYPE_1__ lhs; } ;
struct TYPE_13__ {int nWork; TYPE_8__* pLevel; int * pPage; TYPE_4__* pDb; } ;
struct TYPE_11__ {scalar_t__ iOutputOff; } ;
typedef int Page ;
typedef TYPE_5__ MergeWorker ;
typedef int LsmPgno ;


 int LSM_OK ;
 size_t SEGMENT_FLAGS_OFFSET (int) ;
 size_t SEGMENT_NRECORD_OFFSET (int) ;
 size_t SEGMENT_POINTER_OFFSET (int) ;
 int assert (int) ;
 int * fsPageData (int *,int*) ;
 int lsmFsSortedAppend (int ,int ,TYPE_8__*,int ,int **) ;
 int lsmPutU16 (int *,int ) ;
 int lsmPutU64 (int *,int ) ;
 int mergeWorkerPersistAndRelease (TYPE_5__*) ;

__attribute__((used)) static int mergeWorkerNextPage(
  MergeWorker *pMW,
  LsmPgno iFPtr
){
  int rc = LSM_OK;
  Page *pNext = 0;
  lsm_db *pDb = pMW->pDb;

  rc = lsmFsSortedAppend(pDb->pFS, pDb->pWorker, pMW->pLevel, 0, &pNext);
  assert( rc || pMW->pLevel->lhs.iFirst>0 || pMW->pDb->compress.xCompress );

  if( rc==LSM_OK ){
    u8 *aData;
    int nData;

    rc = mergeWorkerPersistAndRelease(pMW);

    pMW->pPage = pNext;
    pMW->pLevel->pMerge->iOutputOff = 0;
    aData = fsPageData(pNext, &nData);
    lsmPutU16(&aData[SEGMENT_NRECORD_OFFSET(nData)], 0);
    lsmPutU16(&aData[SEGMENT_FLAGS_OFFSET(nData)], 0);
    lsmPutU64(&aData[SEGMENT_POINTER_OFFSET(nData)], iFPtr);
    pMW->nWork++;
  }

  return rc;
}
