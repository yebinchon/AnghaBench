
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int iUsedShmid; } ;
struct TYPE_10__ {scalar_t__ iReader; TYPE_6__* pWorker; int pEnv; TYPE_1__ treehdr; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_11__ {int iId; } ;


 int LSM_LOCK_UNLOCK ;
 int LSM_LOCK_WORKER ;
 int LSM_OK ;
 int assert (int) ;
 int dbSetReadLock (TYPE_2__*,int ,int ) ;
 int lsmFreeSnapshot (int ,TYPE_6__*) ;
 int lsmSaveWorker (TYPE_2__*,int) ;
 int lsmShmLock (TYPE_2__*,int ,int ,int ) ;
 int lsmTreeLoadHeader (TYPE_2__*,int ) ;

void lsmFinishWork(lsm_db *pDb, int bFlush, int *pRc){
  int rc = *pRc;
  assert( rc!=0 || pDb->pWorker );
  if( pDb->pWorker ){


    if( rc==LSM_OK ){
      rc = lsmSaveWorker(pDb, bFlush);
    }



    if( rc==LSM_OK ){
      if( pDb->iReader<0 ){
        rc = lsmTreeLoadHeader(pDb, 0);
      }
      if( rc==LSM_OK ){
        rc = dbSetReadLock(pDb, pDb->pWorker->iId, pDb->treehdr.iUsedShmid);
      }
    }


    lsmFreeSnapshot(pDb->pEnv, pDb->pWorker);
    pDb->pWorker = 0;
  }

  lsmShmLock(pDb, LSM_LOCK_WORKER, LSM_LOCK_UNLOCK, 0);
  *pRc = rc;
}
