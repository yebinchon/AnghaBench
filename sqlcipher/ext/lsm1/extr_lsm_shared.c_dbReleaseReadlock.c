
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iReader; scalar_t__ bRoTrans; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_LOCK_READER (int) ;
 int LSM_LOCK_UNLOCK ;
 int LSM_OK ;
 int lsmShmLock (TYPE_1__*,int ,int ,int ) ;

int dbReleaseReadlock(lsm_db *db){
  int rc = LSM_OK;
  if( db->iReader>=0 ){
    rc = lsmShmLock(db, LSM_LOCK_READER(db->iReader), LSM_LOCK_UNLOCK, 0);
    db->iReader = -1;
  }
  db->bRoTrans = 0;
  return rc;
}
