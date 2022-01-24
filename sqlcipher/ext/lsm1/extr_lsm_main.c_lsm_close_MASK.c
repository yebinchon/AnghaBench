#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* aArray; } ;
struct TYPE_13__ {int /*<<< orphan*/  pCtx; int /*<<< orphan*/  (* xFree ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  pCtx; int /*<<< orphan*/  (* xFree ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  pEnv; struct TYPE_15__* apShm; struct TYPE_15__* aTrans; TYPE_3__ rollback; TYPE_2__ compress; TYPE_1__ factory; int /*<<< orphan*/  pFS; scalar_t__ pClient; scalar_t__ nTransOpen; scalar_t__ pCsr; } ;
typedef  TYPE_4__ lsm_db ;

/* Variables and functions */
 int LSM_MISUSE_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(lsm_db *pDb){
  int rc = LSM_OK;
  if( pDb ){
    FUNC1(pDb);
    if( pDb->pCsr || pDb->nTransOpen ){
      rc = LSM_MISUSE_BKPT;
    }else{
      FUNC7(pDb);
      FUNC4(pDb->pEnv, pDb->pClient);
      pDb->pClient = 0;

      FUNC0(pDb);

      FUNC2(pDb);
      FUNC6(pDb);
      FUNC5(pDb->pFS);
      /* assert( pDb->mLock==0 ); */
      
      /* Invoke any destructors registered for the compression or 
      ** compression factory callbacks.  */
      if( pDb->factory.xFree ) pDb->factory.xFree(pDb->factory.pCtx);
      if( pDb->compress.xFree ) pDb->compress.xFree(pDb->compress.pCtx);

      FUNC3(pDb->pEnv, pDb->rollback.aArray);
      FUNC3(pDb->pEnv, pDb->aTrans);
      FUNC3(pDb->pEnv, pDb->apShm);
      FUNC3(pDb->pEnv, pDb);
    }
  }
  return rc;
}