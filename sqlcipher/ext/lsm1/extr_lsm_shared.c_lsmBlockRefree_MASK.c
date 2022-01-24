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
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,int) ; 

int FUNC2(lsm_db *pDb, int iBlk){
  int rc = LSM_OK;                /* Return code */

#ifdef LSM_LOG_FREELIST
  lsmLogMessage(pDb, LSM_OK, "lsmBlockRefree(): Refree block %d", iBlk);
#endif

  rc = FUNC0(pDb, iBlk, 0);
  return rc;
}