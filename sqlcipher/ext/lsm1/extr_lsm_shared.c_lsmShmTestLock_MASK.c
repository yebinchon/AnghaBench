#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_4__ {int mLock; int /*<<< orphan*/  pEnv; struct TYPE_4__* pNext; TYPE_2__* pDatabase; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_5__ {int /*<<< orphan*/  pClientMutex; int /*<<< orphan*/  pFile; scalar_t__ bMultiProc; TYPE_1__* pConn; } ;
typedef  TYPE_2__ Database ;

/* Variables and functions */
 int LSM_BUSY ; 
 int LSM_LOCK_EXCL ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(
  lsm_db *db,
  int iLock,
  int nLock,
  int eOp
){
  int rc = LSM_OK;
  lsm_db *pIter;
  Database *p = db->pDatabase;
  int i;
  u64 mask = 0;

  for(i=iLock; i<(iLock+nLock); i++){
    mask |= ((u64)1 << (iLock-1));
    if( eOp==LSM_LOCK_EXCL ) mask |= ((u64)1 << (iLock+32-1));
  }

  FUNC2(db->pEnv, p->pClientMutex);
  for(pIter=p->pConn; pIter; pIter=pIter->pNext){
    if( pIter!=db && (pIter->mLock & mask) ){
      FUNC0( pIter!=db );
      break;
    }
  }

  if( pIter ){
    rc = LSM_BUSY;
  }else if( p->bMultiProc ){
    rc = FUNC1(db->pEnv, p->pFile, iLock, nLock, eOp);
  }

  FUNC3(db->pEnv, p->pClientMutex);
  return rc;
}