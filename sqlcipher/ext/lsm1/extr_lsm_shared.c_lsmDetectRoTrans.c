
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bReadonly; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_BUSY ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_ROTRANS ;
 int LSM_OK ;
 int assert (int) ;
 int lsmShmTestLock (TYPE_1__*,int ,int,int ) ;

int lsmDetectRoTrans(lsm_db *db, int *pbExist){
  int rc;


  assert( db->bReadonly==0 );

  rc = lsmShmTestLock(db, LSM_LOCK_ROTRANS, 1, LSM_LOCK_EXCL);
  if( rc==LSM_BUSY ){
    *pbExist = 1;
    rc = LSM_OK;
  }else{
    *pbExist = 0;
  }

  return rc;
}
