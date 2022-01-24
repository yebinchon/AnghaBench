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
struct TYPE_4__ {int /*<<< orphan*/ * pWorker; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  Snapshot ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(lsm_db *pDb, Snapshot **pp, int *pbUnlock){
  int rc = LSM_OK;

  FUNC0( *pbUnlock==0 );
  if( !pDb->pWorker ){
    rc = FUNC1(pDb);
    if( rc!=LSM_OK ) return rc;
    *pbUnlock = 1;
  }
  if( pp ) *pp = pDb->pWorker;
  return rc;
}