#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  aCksum; } ;
struct TYPE_7__ {int /*<<< orphan*/  rollback; int /*<<< orphan*/  pEnv; TYPE_3__ treehdr; TYPE_2__* pShmhdr; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  TreeHeader ;
struct TYPE_8__ {scalar_t__ bWriter; int /*<<< orphan*/  hdr1; int /*<<< orphan*/  hdr2; } ;
typedef  TYPE_2__ ShmHeader ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC4(lsm_db *pDb, int bCommit){
  ShmHeader *pShm = pDb->pShmhdr;

  FUNC3(&pDb->treehdr, pDb->treehdr.aCksum);
  FUNC2(&pShm->hdr2, &pDb->treehdr, sizeof(TreeHeader));
  FUNC1(pDb);
  FUNC2(&pShm->hdr1, &pDb->treehdr, sizeof(TreeHeader));
  pShm->bWriter = 0;
  FUNC0(pDb->pEnv, &pDb->rollback);

  return LSM_OK;
}