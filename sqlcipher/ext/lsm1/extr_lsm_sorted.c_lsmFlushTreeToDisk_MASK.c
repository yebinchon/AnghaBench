#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  nMerge; } ;
typedef  TYPE_1__ lsm_db ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  TREE_BOTH ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(lsm_db *pDb){
  int rc;

  rc = FUNC0(pDb);
  while( rc==LSM_OK && FUNC2(pDb) ){
    rc = FUNC4(pDb, 256, pDb->nMerge, 1, 0);
  }

  if( rc==LSM_OK ){
    rc = FUNC3(pDb, TREE_BOTH, 0);
  }

  FUNC1(pDb, 1, &rc);
  return rc;
}