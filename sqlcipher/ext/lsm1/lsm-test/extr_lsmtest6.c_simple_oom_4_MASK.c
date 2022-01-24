#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  OomTest ;

/* Variables and functions */
 int /*<<< orphan*/  LSMTEST6_TESTDB ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int*) ; 

__attribute__((used)) static void FUNC4(OomTest *pOom){
  int rc = LSM_OK;
  lsm_db *pDb;

  FUNC1(LSMTEST6_TESTDB);
  FUNC2(pOom, LSMTEST6_TESTDB, &pDb, &rc);

  FUNC3(pOom, pDb, "123", "onetwothree", &rc);
  FUNC3(pOom, pDb, "456", "fourfivesix", &rc);
  FUNC3(pOom, pDb, "789", "seveneightnine", &rc);
  FUNC3(pOom, pDb, "123", "teneleventwelve", &rc);
  FUNC3(pOom, pDb, "456", "fourteenfifteensixteen", &rc);

  FUNC0(pDb);
}