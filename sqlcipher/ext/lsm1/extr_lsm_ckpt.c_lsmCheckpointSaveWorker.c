
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int pEnv; TYPE_3__* pShmhdr; TYPE_2__* pWorker; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_9__ {int aSnap1; int aSnap2; } ;
struct TYPE_8__ {int iId; } ;
typedef TYPE_2__ Snapshot ;
typedef TYPE_3__ ShmHeader ;


 int LSM_META_RW_PAGE_SIZE ;
 int LSM_OK ;
 int assert (int) ;
 int ckptChecksumOk (int *) ;
 int ckptExportSnapshot (TYPE_1__*,int,int ,int,void**,int*) ;
 int lsmFree (int ,void*) ;
 int lsmShmBarrier (TYPE_1__*) ;
 int memcpy (int ,void*,int) ;

int lsmCheckpointSaveWorker(lsm_db *pDb, int bFlush){
  Snapshot *pSnap = pDb->pWorker;
  ShmHeader *pShm = pDb->pShmhdr;
  void *p = 0;
  int n = 0;
  int rc;

  pSnap->iId++;
  rc = ckptExportSnapshot(pDb, bFlush, pSnap->iId, 1, &p, &n);
  if( rc!=LSM_OK ) return rc;
  assert( ckptChecksumOk((u32 *)p) );

  assert( n<=LSM_META_RW_PAGE_SIZE );
  memcpy(pShm->aSnap2, p, n);
  lsmShmBarrier(pDb);
  memcpy(pShm->aSnap1, p, n);
  lsmFree(pDb->pEnv, p);


  return LSM_OK;
}
