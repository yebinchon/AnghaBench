#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_8__ {int /*<<< orphan*/  pEnv; TYPE_2__* pWorker; int /*<<< orphan*/ * pFS; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_12__ {scalar_t__* aUsed; int nBlock; } ;
struct TYPE_11__ {scalar_t__* aEntry; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int nRight; int /*<<< orphan*/ * aRhs; int /*<<< orphan*/  lhs; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {int nBlock; TYPE_3__* pLevel; } ;
typedef  TYPE_2__ Snapshot ;
typedef  TYPE_3__ Level ;
typedef  TYPE_4__ Freelist ;
typedef  int /*<<< orphan*/  FileSystem ;
typedef  TYPE_5__ CheckFreelistCtx ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  checkFreelistCb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(lsm_db *pDb){
  CheckFreelistCtx ctx;
  FileSystem *pFS = pDb->pFS;
  int i;
  int rc;
  Freelist freelist = {0, 0, 0};
  u8 *aUsed;
  Level *pLevel;
  Snapshot *pWorker = pDb->pWorker;
  int nBlock = pWorker->nBlock;

#if 0 
  static int nCall = 0;
  nCall++;
  printf("%d calls\n", nCall);
#endif

  aUsed = FUNC3(pDb->pEnv, nBlock);
  if( aUsed==0 ){
    /* Malloc has failed. Since this function is only called within debug
    ** builds, this probably means the user is running an OOM injection test.
    ** Regardless, it will not be possible to run the integrity-check at this
    ** time, so assume the database is Ok and return non-zero. */
    return 1;
  }

  for(pLevel=pWorker->pLevel; pLevel; pLevel=pLevel->pNext){
    int j;
    FUNC1(pFS, &pLevel->lhs, (pLevel->nRight!=0), nBlock, aUsed);
    for(j=0; j<pLevel->nRight; j++){
      FUNC1(pFS, &pLevel->aRhs[j], 0, nBlock, aUsed);
    }
  }

  /* Mark all blocks in the free-list as used */
  ctx.aUsed = aUsed;
  ctx.nBlock = nBlock;
  rc = FUNC4(pDb, 0, checkFreelistCb, (void *)&ctx);

  if( rc==LSM_OK ){
    for(i=0; i<nBlock; i++) FUNC0( aUsed[i]!=0 );
  }

  FUNC2(pDb->pEnv, aUsed);
  FUNC2(pDb->pEnv, freelist.aEntry);

  return 1;
}