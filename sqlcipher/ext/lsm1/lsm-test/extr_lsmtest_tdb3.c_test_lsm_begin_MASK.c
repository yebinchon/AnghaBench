#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {scalar_t__ pCsr; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ LsmDb ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(TestDb *pTestDb, int iLevel){
  int rc = LSM_OK;
  LsmDb *pDb = (LsmDb *)pTestDb;

  /* iLevel==0 is a no-op. */
  if( iLevel==0 ) return 0;

  if( pDb->pCsr==0 ) rc = FUNC1(pDb->db, &pDb->pCsr);
  if( rc==LSM_OK && iLevel>1 ){
    rc = FUNC0(pDb->db, iLevel-1);
  }

  return rc;
}