
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;



 scalar_t__ LSM_LOCK_NREADER ;
 int LSM_LOCK_READER (scalar_t__) ;


 int assert (int) ;
 int shmLockType (int *,int) ;

int lsmShmAssertLock(lsm_db *db, int iLock, int eOp){
  int ret = 0;
  int eHave;

  assert( iLock>=1 && iLock<=LSM_LOCK_READER(LSM_LOCK_NREADER-1) );
  assert( iLock<=16 );
  assert( eOp==128 || eOp==129 || eOp==130 );

  eHave = shmLockType(db, iLock);

  switch( eOp ){
    case 128:
      ret = (eHave==128);
      break;
    case 129:
      ret = (eHave!=128);
      break;
    case 130:
      ret = (eHave==130);
      break;
    default:
      assert( !"bad eOp value passed to lsmShmAssertLock()" );
      break;
  }

  return ret;
}
