
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iOldShmid; scalar_t__ iUsedShmid; } ;
struct TYPE_6__ {TYPE_1__ treehdr; } ;
typedef TYPE_2__ lsm_db ;


 int LSM_LOCK_DMS2 ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_WRITER ;
 int assert (int) ;
 scalar_t__ lsmShmAssertLock (TYPE_2__*,int ,int ) ;

void lsmTreeDiscardOld(lsm_db *pDb){
  assert( lsmShmAssertLock(pDb, LSM_LOCK_WRITER, LSM_LOCK_EXCL)
       || lsmShmAssertLock(pDb, LSM_LOCK_DMS2, LSM_LOCK_EXCL)
  );
  pDb->treehdr.iUsedShmid = pDb->treehdr.iOldShmid;
  pDb->treehdr.iOldShmid = 0;
}
