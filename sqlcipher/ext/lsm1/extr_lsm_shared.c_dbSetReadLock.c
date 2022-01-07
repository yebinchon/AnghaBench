
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {TYPE_3__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
typedef scalar_t__ i64 ;
struct TYPE_8__ {TYPE_2__* aReader; } ;
struct TYPE_7__ {scalar_t__ iLsmId; scalar_t__ iTreeId; } ;
typedef TYPE_2__ ShmReader ;
typedef TYPE_3__ ShmHeader ;


 int LSM_BUSY ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_NREADER ;
 int LSM_LOCK_READER (int) ;
 int LSM_LOCK_UNLOCK ;
 int LSM_OK ;
 int lsmShmLock (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int dbSetReadLock(lsm_db *db, i64 iLsm, u32 iShm){
  int rc = LSM_OK;
  ShmHeader *pShm = db->pShmhdr;
  int i;


  for(i=0; i<LSM_LOCK_NREADER; i++){
    ShmReader *p = &pShm->aReader[i];
    if( p->iLsmId==iLsm && p->iTreeId==iShm ) return LSM_OK;
  }




  for(i=0; rc==LSM_OK && i<LSM_LOCK_NREADER; i++){
    rc = lsmShmLock(db, LSM_LOCK_READER(i), LSM_LOCK_EXCL, 0);
    if( rc==LSM_BUSY ){
      rc = LSM_OK;
    }else{
      ShmReader *p = &pShm->aReader[i];
      p->iLsmId = iLsm;
      p->iTreeId = iShm;
      lsmShmLock(db, LSM_LOCK_READER(i), LSM_LOCK_UNLOCK, 0);
      break;
    }
  }

  return rc;
}
