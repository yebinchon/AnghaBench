
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int const mLock; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_LOCK_EXCL ;
 int LSM_LOCK_SHARED ;
 int LSM_LOCK_UNLOCK ;

int shmLockType(lsm_db *db, int iLock){
  const u64 me = ((u64)1 << (iLock-1));
  const u64 ms = ((u64)1 << (iLock+32-1));

  if( db->mLock & me ) return LSM_LOCK_EXCL;
  if( db->mLock & ms ) return LSM_LOCK_SHARED;
  return LSM_LOCK_UNLOCK;
}
