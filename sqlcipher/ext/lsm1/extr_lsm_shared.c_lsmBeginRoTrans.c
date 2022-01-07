
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ iReader; int bRoTrans; scalar_t__* apShm; int * pShmhdr; scalar_t__ bReadonly; } ;
typedef TYPE_1__ lsm_db ;
typedef int ShmHeader ;


 int LSM_BUSY ;
 int LSM_LOCK_DMS1 ;
 int LSM_LOCK_DMS3 ;
 int LSM_LOCK_NREADER ;
 int LSM_LOCK_ROTRANS ;
 int LSM_LOCK_RWCLIENT (int ) ;
 int LSM_LOCK_SHARED ;
 int LSM_LOCK_UNLOCK ;
 int LSM_OK ;
 int assert (int) ;
 int lsmBeginReadTrans (TYPE_1__*) ;
 int lsmCheckpointRecover (TYPE_1__*) ;
 int lsmLogRecover (TYPE_1__*) ;
 int lsmShmCacheChunks (TYPE_1__*,int) ;
 int lsmShmLock (TYPE_1__*,int ,int ,int ) ;
 int lsmShmTestLock (TYPE_1__*,int ,int ,int ) ;
 int memset (int *,int ,int) ;

int lsmBeginRoTrans(lsm_db *db){
  int rc = LSM_OK;

  assert( db->bReadonly && db->pShmhdr==0 );
  assert( db->iReader<0 );

  if( db->bRoTrans==0 ){


    rc = lsmShmLock(db, LSM_LOCK_DMS1, LSM_LOCK_SHARED, 0);
    if( rc!=LSM_OK ) return rc;

    rc = lsmShmTestLock(
        db, LSM_LOCK_RWCLIENT(0), LSM_LOCK_NREADER, LSM_LOCK_SHARED
    );
    if( rc==LSM_OK ){




      rc = lsmShmLock(db, LSM_LOCK_ROTRANS, LSM_LOCK_SHARED, 0);
      lsmShmLock(db, LSM_LOCK_DMS1, LSM_LOCK_UNLOCK, 0);

      if( rc==LSM_OK ){
        db->bRoTrans = 1;
        rc = lsmShmCacheChunks(db, 1);
        if( rc==LSM_OK ){
          db->pShmhdr = (ShmHeader *)db->apShm[0];
          memset(db->pShmhdr, 0, sizeof(ShmHeader));
          rc = lsmCheckpointRecover(db);
          if( rc==LSM_OK ){
            rc = lsmLogRecover(db);
          }
        }
      }
    }else if( rc==LSM_BUSY ){

      rc = lsmShmLock(db, LSM_LOCK_DMS3, LSM_LOCK_SHARED, 0);
      lsmShmLock(db, LSM_LOCK_DMS1, LSM_LOCK_UNLOCK, 0);
      if( rc==LSM_OK ){
        rc = lsmShmCacheChunks(db, 1);
        if( rc==LSM_OK ){
          db->pShmhdr = (ShmHeader *)db->apShm[0];
        }
      }
    }

    if( rc==LSM_OK ){
      rc = lsmBeginReadTrans(db);
    }
  }

  return rc;
}
