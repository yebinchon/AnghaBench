
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ iRwclient; int mLock; } ;
typedef TYPE_1__ lsm_db ;


 scalar_t__ LSM_LOCK_NRWCLIENT ;
 int LSM_LOCK_RWCLIENT (scalar_t__) ;
 int assert (int) ;

__attribute__((used)) static void assertRwclientLockValue(lsm_db *db){

  u64 msk;
  u64 rwclient = 0;

  if( db->iRwclient>=0 ){
    rwclient = ((u64)1 << (LSM_LOCK_RWCLIENT(db->iRwclient)-1));
  }
  msk = ((u64)1 << (LSM_LOCK_RWCLIENT(LSM_LOCK_NRWCLIENT)-1)) - 1;
  msk -= (((u64)1 << (LSM_LOCK_RWCLIENT(0)-1)) - 1);

  assert( (db->mLock & msk)==rwclient );

}
