#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  iUsedShmid; } ;
struct TYPE_15__ {scalar_t__ nTreeLimit; scalar_t__ bAutowork; int /*<<< orphan*/  pWorkCtx; int /*<<< orphan*/  (* xWork ) (TYPE_3__*,int /*<<< orphan*/ ) ;scalar_t__ bDiscardOld; TYPE_2__ treehdr; TYPE_1__* pClient; } ;
typedef  TYPE_3__ lsm_db ;
struct TYPE_13__ {int /*<<< orphan*/  iId; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_LOCK_UNLOCK ; 
 int /*<<< orphan*/  LSM_LOCK_WRITER ; 
 int LSM_OK ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC8(lsm_db *pDb, int bCommit){
  int rc = LSM_OK;
  int bFlush = 0;

  FUNC1(pDb, bCommit);
  if( rc==LSM_OK && bCommit && FUNC6(pDb)>pDb->nTreeLimit ){
    bFlush = 1;
    FUNC5(pDb);
  }
  FUNC4(pDb, bCommit);

  if( rc==LSM_OK ){
    if( bFlush && pDb->bAutowork ){
      rc = FUNC3(pDb, 1);
    }else if( bCommit && pDb->bDiscardOld ){
      rc = FUNC0(pDb, pDb->pClient->iId, pDb->treehdr.iUsedShmid);
    }
  }
  pDb->bDiscardOld = 0;
  FUNC2(pDb, LSM_LOCK_WRITER, LSM_LOCK_UNLOCK, 0);

  if( bFlush && pDb->bAutowork==0 && pDb->xWork ){
    pDb->xWork(pDb, pDb->pWorkCtx);
  }
  return rc;
}