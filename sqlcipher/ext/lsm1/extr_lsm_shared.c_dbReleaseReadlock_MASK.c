#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int iReader; scalar_t__ bRoTrans; } ;
typedef  TYPE_1__ lsm_db ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LSM_LOCK_UNLOCK ; 
 int LSM_OK ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(lsm_db *db){
  int rc = LSM_OK;
  if( db->iReader>=0 ){
    rc = FUNC1(db, FUNC0(db->iReader), LSM_LOCK_UNLOCK, 0);
    db->iReader = -1;
  }
  db->bRoTrans = 0;
  return rc;
}