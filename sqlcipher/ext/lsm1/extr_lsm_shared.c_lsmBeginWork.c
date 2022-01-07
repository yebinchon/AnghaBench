
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_LOCK_EXCL ;
 int LSM_LOCK_WORKER ;
 int LSM_OK ;
 int lsmCheckpointLoadWorker (int *) ;
 int lsmShmLock (int *,int ,int ,int ) ;

int lsmBeginWork(lsm_db *pDb){
  int rc;


  rc = lsmShmLock(pDb, LSM_LOCK_WORKER, LSM_LOCK_EXCL, 0);


  if( rc==LSM_OK ){
    rc = lsmCheckpointLoadWorker(pDb);
  }
  return rc;
}
