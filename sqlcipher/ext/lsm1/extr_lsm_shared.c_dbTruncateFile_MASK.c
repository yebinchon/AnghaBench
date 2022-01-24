#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_5__* pWorker; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  pFS; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int i64 ;
struct TYPE_10__ {scalar_t__ nBlock; } ;
struct TYPE_9__ {int iInUse; scalar_t__ nBlock; } ;
typedef  TYPE_2__ DbTruncateCtx ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_LOCK_DMS1 ; 
 int /*<<< orphan*/  LSM_LOCK_EXCL ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dbTruncateCb ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC7(lsm_db *pDb){
  int rc;

  FUNC0( pDb->pWorker==0 );
  FUNC0( FUNC5(pDb, LSM_LOCK_DMS1, LSM_LOCK_EXCL) );
  rc = FUNC1(pDb);

  if( rc==LSM_OK ){
    DbTruncateCtx ctx;

    /* Walk the database free-block-list in reverse order. Set ctx.nBlock
    ** to the block number of the last block in the database that actually
    ** contains data. */
    ctx.nBlock = pDb->pWorker->nBlock;
    ctx.iInUse = -1;
    rc = FUNC6(pDb, 1, dbTruncateCb, (void *)&ctx);

    /* If the last block that contains data is not already the last block in
    ** the database file, truncate the database file so that it is. */
    if( rc==LSM_OK ){
      rc = FUNC4(
          pDb->pFS, (i64)ctx.nBlock*FUNC3(pDb->pFS)
      );
    }
  }

  FUNC2(pDb->pEnv, pDb->pWorker);
  pDb->pWorker = 0;
  return rc;
}