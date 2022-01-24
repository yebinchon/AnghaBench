#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_db ;

/* Variables and functions */
#define  LSM_LOCK_EXCL 130 
 scalar_t__ LSM_LOCK_NREADER ; 
 int FUNC0 (scalar_t__) ; 
#define  LSM_LOCK_SHARED 129 
#define  LSM_LOCK_UNLOCK 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(lsm_db *db, int iLock, int eOp){
  int ret = 0;
  int eHave;

  FUNC1( iLock>=1 && iLock<=FUNC0(LSM_LOCK_NREADER-1) );
  FUNC1( iLock<=16 );
  FUNC1( eOp==LSM_LOCK_UNLOCK || eOp==LSM_LOCK_SHARED || eOp==LSM_LOCK_EXCL );

  eHave = FUNC2(db, iLock);

  switch( eOp ){
    case LSM_LOCK_UNLOCK:
      ret = (eHave==LSM_LOCK_UNLOCK);
      break;
    case LSM_LOCK_SHARED:
      ret = (eHave!=LSM_LOCK_UNLOCK);
      break;
    case LSM_LOCK_EXCL:
      ret = (eHave==LSM_LOCK_EXCL);
      break;
    default:
      FUNC1( !"bad eOp value passed to lsmShmAssertLock()" );
      break;
  }

  return ret;
}