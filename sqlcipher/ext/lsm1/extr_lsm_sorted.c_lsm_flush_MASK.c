#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ nTransOpen; scalar_t__ pCsr; } ;
typedef  TYPE_1__ lsm_db ;

/* Variables and functions */
 int LSM_MISUSE_BKPT ; 
 int LSM_OK ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(lsm_db *db){
  int rc;

  if( db->nTransOpen>0 || db->pCsr ){
    rc = LSM_MISUSE_BKPT;
  }else{
    rc = FUNC0(db);
    if( rc==LSM_OK ){
      FUNC3(db);
      FUNC4(db);
      FUNC5(db);
      FUNC4(db);
    }

    if( rc==LSM_OK ){
      rc = FUNC2(db, 1);
    }else{
      FUNC2(db, 0);
    }
    FUNC1(db);
  }

  return rc;
}