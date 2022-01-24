#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* pWorker; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_8__ {int /*<<< orphan*/  iId; } ;
typedef  TYPE_2__ Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(lsm_db *pDb, int iBlk){
  Snapshot *p = pDb->pWorker;
  FUNC0( FUNC3(pDb) );

#ifdef LSM_LOG_FREELIST
  lsmLogMessage(pDb, LSM_OK, "lsmBlockFree(): Free block %d", iBlk);
#endif

  return FUNC1(pDb, iBlk, p->iId);
}