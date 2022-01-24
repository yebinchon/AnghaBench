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
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_4__ {scalar_t__ eMode; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ LsmDb ;

/* Variables and functions */
 scalar_t__ LSMTEST_MODE_BACKGROUND_BOTH ; 
 scalar_t__ LSMTEST_MODE_BACKGROUND_CKPT ; 
 scalar_t__ LSMTEST_MODE_BACKGROUND_WORK ; 
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int,void*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(
  TestDb *pTestDb, 
  void *pKey, 
  int nKey, 
  void *pVal,
  int nVal
){
  LsmDb *pDb = (LsmDb *)pTestDb;
  int rc = LSM_OK;

  if( pDb->eMode==LSMTEST_MODE_BACKGROUND_CKPT ){
    rc = FUNC1(pDb, pDb->db);
  }else if( 
      pDb->eMode==LSMTEST_MODE_BACKGROUND_WORK
   || pDb->eMode==LSMTEST_MODE_BACKGROUND_BOTH 
  ){
    rc = FUNC2(pDb);
  }

  if( rc==LSM_OK ){
    rc = FUNC0(pDb->db, pKey, nKey, pVal, nVal);
  }
  return rc;
}