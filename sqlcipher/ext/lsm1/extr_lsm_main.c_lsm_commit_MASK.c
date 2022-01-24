#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nTransOpen; scalar_t__ eSafety; int /*<<< orphan*/  pFS; } ;
typedef  TYPE_1__ lsm_db ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int LSM_OK ; 
 scalar_t__ LSM_SAFETY_FULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6(lsm_db *pDb, int iLevel){
  int rc = LSM_OK;

  FUNC1( pDb );

  /* A value less than zero means close the innermost nested transaction. */
  if( iLevel<0 ) iLevel = FUNC0(0, pDb->nTransOpen - 1);

  if( iLevel<pDb->nTransOpen ){
    if( iLevel==0 ){
      int rc2;
      /* Commit the transaction to disk. */
      if( rc==LSM_OK ) rc = FUNC5(pDb);
      if( rc==LSM_OK && pDb->eSafety==LSM_SAFETY_FULL ){
        rc = FUNC4(pDb->pFS);
      }
      rc2 = FUNC3(pDb, (rc==LSM_OK));
      if( rc==LSM_OK ) rc = rc2;
    }
    pDb->nTransOpen = iLevel;
  }
  FUNC2(pDb);
  return rc;
}