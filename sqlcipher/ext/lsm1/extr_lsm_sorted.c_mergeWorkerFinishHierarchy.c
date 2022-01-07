
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int nHier; int ** apHier; } ;
struct TYPE_13__ {TYPE_5__ hier; TYPE_4__* pDb; TYPE_3__* pLevel; TYPE_1__* aSave; } ;
struct TYPE_11__ {int pEnv; } ;
struct TYPE_9__ {int iRoot; } ;
struct TYPE_10__ {TYPE_2__ lhs; } ;
struct TYPE_8__ {int iPgno; } ;
typedef int Page ;
typedef TYPE_6__ MergeWorker ;
typedef int LsmPgno ;


 int LSM_OK ;
 size_t SEGMENT_POINTER_OFFSET (int) ;
 int * fsPageData (int *,int*) ;
 int lsmFree (int ,int **) ;
 int lsmFsPageNumber (int *) ;
 int lsmFsPagePersist (int *) ;
 int lsmFsPageRelease (int *) ;
 int lsmPutU64 (int *,int ) ;

__attribute__((used)) static int mergeWorkerFinishHierarchy(
  MergeWorker *pMW
){
  int i;
  int rc = LSM_OK;
  LsmPgno iPtr;

  iPtr = pMW->aSave[0].iPgno;
  for(i=0; i<pMW->hier.nHier && rc==LSM_OK; i++){
    Page *pPg = pMW->hier.apHier[i];
    int nData;
    u8 *aData;

    aData = fsPageData(pPg, &nData);
    lsmPutU64(&aData[SEGMENT_POINTER_OFFSET(nData)], iPtr);

    rc = lsmFsPagePersist(pPg);
    iPtr = lsmFsPageNumber(pPg);
    lsmFsPageRelease(pPg);
  }

  if( pMW->hier.nHier ){
    pMW->pLevel->lhs.iRoot = iPtr;
    lsmFree(pMW->pDb->pEnv, pMW->hier.apHier);
    pMW->hier.apHier = 0;
    pMW->hier.nHier = 0;
  }

  return rc;
}
