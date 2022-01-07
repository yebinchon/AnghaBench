
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int pWorker; int pFS; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_5__ {int nHier; int ** apHier; } ;
struct TYPE_7__ {int pLevel; TYPE_1__ hier; TYPE_2__* pDb; } ;
typedef int Page ;
typedef TYPE_3__ MergeWorker ;


 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int SEGMENT_EOF (int,int) ;
 size_t SEGMENT_FLAGS_OFFSET (int) ;
 size_t SEGMENT_NRECORD_OFFSET (int) ;
 size_t SEGMENT_POINTER_OFFSET (int) ;
 int assert (int) ;
 int * fsPageData (int *,int*) ;
 int lsmFsPageRelease (int *) ;
 int lsmFsPageWritable (int *) ;
 int lsmFsSortedAppend (int ,int ,int ,int,int **) ;
 int lsmPutU16 (int *,int ) ;
 int lsmPutU64 (int *,int ) ;
 int memcpy (int *,int *,int) ;
 int pageGetNRec (int *,int) ;

__attribute__((used)) static int mergeWorkerMoveHierarchy(
  MergeWorker *pMW,
  int bSep
){
  lsm_db *pDb = pMW->pDb;
  int rc = LSM_OK;
  int i;
  Page **apHier = pMW->hier.apHier;
  int nHier = pMW->hier.nHier;

  for(i=0; rc==LSM_OK && i<nHier; i++){
    Page *pNew = 0;
    rc = lsmFsSortedAppend(pDb->pFS, pDb->pWorker, pMW->pLevel, 1, &pNew);
    assert( rc==LSM_OK );

    if( rc==LSM_OK ){
      u8 *a1; int n1;
      u8 *a2; int n2;

      a1 = fsPageData(pNew, &n1);
      a2 = fsPageData(apHier[i], &n2);

      assert( n1==n2 || n1+4==n2 );

      if( n1==n2 ){
        memcpy(a1, a2, n2);
      }else{
        int nEntry = pageGetNRec(a2, n2);
        int iEof1 = SEGMENT_EOF(n1, nEntry);
        int iEof2 = SEGMENT_EOF(n2, nEntry);

        memcpy(a1, a2, iEof2 - 4);
        memcpy(&a1[iEof1], &a2[iEof2], n2 - iEof2);
      }

      lsmFsPageRelease(apHier[i]);
      apHier[i] = pNew;
    }
  }







  return rc;
}
