#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  iUsedShmid; } ;
struct TYPE_10__ {scalar_t__ iReader; TYPE_6__* pWorker; int /*<<< orphan*/  pEnv; TYPE_1__ treehdr; } ;
typedef  TYPE_2__ lsm_db ;
struct TYPE_11__ {int /*<<< orphan*/  iId; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_LOCK_UNLOCK ; 
 int /*<<< orphan*/  LSM_LOCK_WORKER ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC6(lsm_db *pDb, int bFlush, int *pRc){
  int rc = *pRc;
  FUNC0( rc!=0 || pDb->pWorker );
  if( pDb->pWorker ){
    /* If no error has occurred, serialize the worker snapshot and write
    ** it to shared memory.  */
    if( rc==LSM_OK ){
      rc = FUNC3(pDb, bFlush);
    }

    /* Assuming no error has occurred, update a read lock slot with the
    ** new snapshot id (see comments above function dbSetReadLock()).  */
    if( rc==LSM_OK ){
      if( pDb->iReader<0 ){
        rc = FUNC5(pDb, 0);
      }
      if( rc==LSM_OK ){
        rc = FUNC1(pDb, pDb->pWorker->iId, pDb->treehdr.iUsedShmid);
      }
    }

    /* Free the snapshot object. */
    FUNC2(pDb->pEnv, pDb->pWorker);
    pDb->pWorker = 0;
  }

  FUNC4(pDb, LSM_LOCK_WORKER, LSM_LOCK_UNLOCK, 0);
  *pRc = rc;
}