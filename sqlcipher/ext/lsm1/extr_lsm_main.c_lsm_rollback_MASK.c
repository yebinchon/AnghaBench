#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nTransOpen; TYPE_2__* aTrans; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_10__ {int /*<<< orphan*/  log; int /*<<< orphan*/  tree; } ;
typedef  TYPE_2__ TransMark ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC6(lsm_db *pDb, int iLevel){
  int rc = LSM_OK;
  FUNC1( pDb );

  if( pDb->nTransOpen ){
    /* A value less than zero means close the innermost nested transaction. */
    if( iLevel<0 ) iLevel = FUNC0(0, pDb->nTransOpen - 1);

    if( iLevel<=pDb->nTransOpen ){
      TransMark *pMark = &pDb->aTrans[(iLevel==0 ? 0 : iLevel-1)];
      FUNC5(pDb, &pMark->tree);
      if( iLevel ) FUNC4(pDb, &pMark->log);
      pDb->nTransOpen = iLevel;
    }

    if( pDb->nTransOpen==0 ){
      FUNC3(pDb, 0);
    }
    FUNC2(pDb);
  }

  return rc;
}