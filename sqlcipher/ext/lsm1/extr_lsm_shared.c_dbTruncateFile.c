
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* pWorker; int pEnv; int pFS; } ;
typedef TYPE_1__ lsm_db ;
typedef int i64 ;
struct TYPE_10__ {scalar_t__ nBlock; } ;
struct TYPE_9__ {int iInUse; scalar_t__ nBlock; } ;
typedef TYPE_2__ DbTruncateCtx ;


 int LSM_LOCK_DMS1 ;
 int LSM_LOCK_EXCL ;
 int LSM_OK ;
 int assert (int) ;
 int dbTruncateCb ;
 int lsmCheckpointLoadWorker (TYPE_1__*) ;
 int lsmFreeSnapshot (int ,TYPE_5__*) ;
 int lsmFsBlockSize (int ) ;
 int lsmFsTruncateDb (int ,int) ;
 int lsmShmAssertLock (TYPE_1__*,int ,int ) ;
 int lsmWalkFreelist (TYPE_1__*,int,int ,void*) ;

__attribute__((used)) static int dbTruncateFile(lsm_db *pDb){
  int rc;

  assert( pDb->pWorker==0 );
  assert( lsmShmAssertLock(pDb, LSM_LOCK_DMS1, LSM_LOCK_EXCL) );
  rc = lsmCheckpointLoadWorker(pDb);

  if( rc==LSM_OK ){
    DbTruncateCtx ctx;




    ctx.nBlock = pDb->pWorker->nBlock;
    ctx.iInUse = -1;
    rc = lsmWalkFreelist(pDb, 1, dbTruncateCb, (void *)&ctx);



    if( rc==LSM_OK ){
      rc = lsmFsTruncateDb(
          pDb->pFS, (i64)ctx.nBlock*lsmFsBlockSize(pDb->pFS)
      );
    }
  }

  lsmFreeSnapshot(pDb->pEnv, pDb->pWorker);
  pDb->pWorker = 0;
  return rc;
}
