
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int iUsedShmid; } ;
struct TYPE_14__ {scalar_t__ bReadonly; int iRwclient; TYPE_4__* pShmhdr; TYPE_2__ treehdr; scalar_t__* apShm; int pEnv; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_15__ {TYPE_1__* aReader; int aSnap1; } ;
struct TYPE_12__ {int iTreeId; int iLsmId; } ;
typedef TYPE_4__ ShmHeader ;


 int LSM_BUSY ;
 scalar_t__ LSM_LOCK_DMS1 ;
 scalar_t__ LSM_LOCK_DMS2 ;
 scalar_t__ LSM_LOCK_DMS3 ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_NRWCLIENT ;
 scalar_t__ LSM_LOCK_RWCLIENT (int) ;
 int LSM_LOCK_SHARED ;
 int LSM_LOCK_UNLOCK ;
 int LSM_OK ;
 int assert (int) ;
 int lsmCheckpointId (int ,int ) ;
 int lsmCheckpointRecover (TYPE_3__*) ;
 int lsmEnvSleep (int ,int) ;
 int lsmLogRecover (TYPE_3__*) ;
 int lsmShmCacheChunks (TYPE_3__*,int) ;
 int lsmShmLock (TYPE_3__*,scalar_t__,int ,int) ;
 int lsmShmTestLock (TYPE_3__*,scalar_t__,int,int ) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static int doDbConnect(lsm_db *pDb){
  const int nUsMax = 100000;
  int nUs = 1000;
  int rc;


  assert( pDb->pShmhdr==0 );
  assert( pDb->bReadonly==0 );



  while( 1 ){
    rc = lsmShmLock(pDb, LSM_LOCK_DMS1, LSM_LOCK_EXCL, 1);
    if( rc!=LSM_BUSY ) break;
    lsmEnvSleep(pDb->pEnv, nUs);
    nUs = nUs * 2;
    if( nUs>nUsMax ) nUs = nUsMax;
  }
  if( rc==LSM_OK ){
    rc = lsmShmCacheChunks(pDb, 1);
  }
  if( rc!=LSM_OK ) return rc;
  pDb->pShmhdr = (ShmHeader *)pDb->apShm[0];




  assert( LSM_LOCK_DMS3==1+LSM_LOCK_DMS2 );
  rc = lsmShmTestLock(pDb, LSM_LOCK_DMS2, 2, LSM_LOCK_EXCL);
  if( rc==LSM_OK ){
    memset(pDb->pShmhdr, 0, sizeof(ShmHeader));
    rc = lsmCheckpointRecover(pDb);
    if( rc==LSM_OK ){
      rc = lsmLogRecover(pDb);
    }
    if( rc==LSM_OK ){
      ShmHeader *pShm = pDb->pShmhdr;
      pShm->aReader[0].iLsmId = lsmCheckpointId(pShm->aSnap1, 0);
      pShm->aReader[0].iTreeId = pDb->treehdr.iUsedShmid;
    }
  }else if( rc==LSM_BUSY ){
    rc = LSM_OK;
  }
  if( rc==LSM_OK ){
    rc = lsmShmLock(pDb, LSM_LOCK_DMS2, LSM_LOCK_SHARED, 0);
  }



  if( rc!=LSM_OK ){
    pDb->pShmhdr = 0;
  }else{
    int i;
    for(i=0; i<LSM_LOCK_NRWCLIENT; i++){
      int rc2 = lsmShmLock(pDb, LSM_LOCK_RWCLIENT(i), LSM_LOCK_EXCL, 0);
      if( rc2==LSM_OK ) pDb->iRwclient = i;
      if( rc2!=LSM_BUSY ){
        rc = rc2;
        break;
      }
    }
  }
  lsmShmLock(pDb, LSM_LOCK_DMS1, LSM_LOCK_UNLOCK, 0);

  return rc;
}
