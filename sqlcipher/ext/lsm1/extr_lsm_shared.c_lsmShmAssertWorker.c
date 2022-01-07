
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pWorker; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_LOCK_EXCL ;
 int LSM_LOCK_WORKER ;
 scalar_t__ lsmShmAssertLock (TYPE_1__*,int ,int ) ;

int lsmShmAssertWorker(lsm_db *db){
  return lsmShmAssertLock(db, LSM_LOCK_WORKER, LSM_LOCK_EXCL) && db->pWorker;
}
