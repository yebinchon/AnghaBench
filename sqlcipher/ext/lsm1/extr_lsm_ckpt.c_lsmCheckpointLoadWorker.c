
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {TYPE_7__* pWorker; int pDatabase; TYPE_2__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_11__ {int iCmpId; int pDatabase; } ;
struct TYPE_10__ {int* aSnap1; int* aSnap2; } ;
typedef TYPE_2__ ShmHeader ;


 size_t CKPT_HDR_NCKPT ;
 int LSM_LOCK_DMS1 ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_WORKER ;
 int LSM_OK ;
 int LSM_PROTOCOL_BKPT ;
 int assert (int) ;
 scalar_t__ ckptChecksumOk (int*) ;
 int lsmCheckCompressionId (TYPE_1__*,int ) ;
 int lsmCheckpointDeserialize (TYPE_1__*,int,int*,TYPE_7__**) ;
 scalar_t__ lsmFsIntegrityCheck (TYPE_1__*) ;
 scalar_t__ lsmShmAssertLock (TYPE_1__*,int ,int ) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

int lsmCheckpointLoadWorker(lsm_db *pDb){
  int rc;
  ShmHeader *pShm = pDb->pShmhdr;
  int nInt1;
  int nInt2;


  assert(
      lsmShmAssertLock(pDb, LSM_LOCK_WORKER, LSM_LOCK_EXCL)
   || lsmShmAssertLock(pDb, LSM_LOCK_DMS1, LSM_LOCK_EXCL)
  );


  nInt1 = pShm->aSnap1[CKPT_HDR_NCKPT];
  nInt2 = pShm->aSnap2[CKPT_HDR_NCKPT];
  if( nInt1!=nInt2 || memcmp(pShm->aSnap1, pShm->aSnap2, nInt2*sizeof(u32)) ){
    if( ckptChecksumOk(pShm->aSnap1) ){
      memcpy(pShm->aSnap2, pShm->aSnap1, sizeof(u32)*nInt1);
    }else if( ckptChecksumOk(pShm->aSnap2) ){
      memcpy(pShm->aSnap1, pShm->aSnap2, sizeof(u32)*nInt2);
    }else{
      return LSM_PROTOCOL_BKPT;
    }
  }

  rc = lsmCheckpointDeserialize(pDb, 1, pShm->aSnap1, &pDb->pWorker);
  if( pDb->pWorker ) pDb->pWorker->pDatabase = pDb->pDatabase;

  if( rc==LSM_OK ){
    rc = lsmCheckCompressionId(pDb, pDb->pWorker->iCmpId);
  }




  return rc;
}
