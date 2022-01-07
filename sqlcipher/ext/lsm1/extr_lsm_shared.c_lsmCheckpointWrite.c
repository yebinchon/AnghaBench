
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_9__ {scalar_t__ pWorker; scalar_t__ pClient; scalar_t__ eSafety; scalar_t__* aSnapshot; int pFS; TYPE_2__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
typedef scalar_t__ i64 ;
struct TYPE_10__ {int iMetaPage; } ;
typedef TYPE_2__ ShmHeader ;
typedef int MetaPage ;


 int LSM_LOCK_CHECKPOINTER ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_UNLOCK ;
 int LSM_LOCK_WORKER ;
 int LSM_OK ;
 scalar_t__ LSM_SAFETY_OFF ;
 int assert (int) ;
 scalar_t__ lsmCheckpointId (scalar_t__*,int) ;
 int lsmCheckpointLoad (TYPE_1__*,int ) ;
 int lsmCheckpointNBlock (scalar_t__*) ;
 scalar_t__ lsmCheckpointNWrite (scalar_t__*,int) ;
 int lsmCheckpointStore (TYPE_1__*,int) ;
 int * lsmFsMetaPageData (int *,int*) ;
 int lsmFsMetaPageGet (int ,int ,int,int **) ;
 int lsmFsMetaPageRelease (int *) ;
 int lsmFsSyncDb (int ,int) ;
 int lsmLogMessage (TYPE_1__*,int ,char*,int) ;
 int lsmShmAssertLock (TYPE_1__*,int ,int ) ;
 int lsmShmLock (TYPE_1__*,int ,int ,int ) ;

int lsmCheckpointWrite(lsm_db *pDb, u32 *pnWrite){
  int rc;
  u32 nWrite = 0;

  assert( pDb->pWorker==0 );
  assert( 1 || pDb->pClient==0 );
  assert( lsmShmAssertLock(pDb, LSM_LOCK_WORKER, LSM_LOCK_UNLOCK) );

  rc = lsmShmLock(pDb, LSM_LOCK_CHECKPOINTER, LSM_LOCK_EXCL, 0);
  if( rc!=LSM_OK ) return rc;

  rc = lsmCheckpointLoad(pDb, 0);
  if( rc==LSM_OK ){
    int nBlock = lsmCheckpointNBlock(pDb->aSnapshot);
    ShmHeader *pShm = pDb->pShmhdr;
    int bDone = 0;



    if( pShm->iMetaPage ){
      MetaPage *pPg;
      u8 *aData;
      int nData;
      i64 iCkpt;
      i64 iDisk = 0;
      iCkpt = lsmCheckpointId(pDb->aSnapshot, 0);
      rc = lsmFsMetaPageGet(pDb->pFS, 0, pShm->iMetaPage, &pPg);
      if( rc==LSM_OK ){
        aData = lsmFsMetaPageData(pPg, &nData);
        iDisk = lsmCheckpointId((u32 *)aData, 1);
        nWrite = lsmCheckpointNWrite((u32 *)aData, 1);
        lsmFsMetaPageRelease(pPg);
      }
      bDone = (iDisk>=iCkpt);
    }

    if( rc==LSM_OK && bDone==0 ){
      int iMeta = (pShm->iMetaPage % 2) + 1;
      if( pDb->eSafety!=LSM_SAFETY_OFF ){
        rc = lsmFsSyncDb(pDb->pFS, nBlock);
      }
      if( rc==LSM_OK ) rc = lsmCheckpointStore(pDb, iMeta);
      if( rc==LSM_OK && pDb->eSafety!=LSM_SAFETY_OFF){
        rc = lsmFsSyncDb(pDb->pFS, 0);
      }
      if( rc==LSM_OK ){
        pShm->iMetaPage = iMeta;
        nWrite = lsmCheckpointNWrite(pDb->aSnapshot, 0) - nWrite;
      }





    }
  }

  lsmShmLock(pDb, LSM_LOCK_CHECKPOINTER, LSM_LOCK_UNLOCK, 0);
  if( pnWrite && rc==LSM_OK ) *pnWrite = nWrite;
  return rc;
}
