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
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  LSMTEST6_TESTDB ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void FUNC10(OomTest *pOom){
  const int nRecord = 100;        /* Number of records initially in db */
  const int nIns = 10;            /* Number of records inserted with OOM */

  Datasource *pData = FUNC1();
  int rc = LSM_OK;
  lsm_db *pDb1;
  lsm_db *pDb2;
  int i;

  FUNC4(LSMTEST6_TESTDB);

  /* Open the two connections. Initialize the in-memory tree so that it
  ** contains 100 records. Do all this with OOM injection disabled. */
  FUNC6(pOom, 0);
  FUNC8(pOom, LSMTEST6_TESTDB, &pDb1, &rc);
  FUNC8(pOom, LSMTEST6_TESTDB, &pDb2, &rc);
  for(i=0; i<nRecord; i++){
    FUNC9(pOom, pDb1, pData, i, &rc);
  }
  FUNC6(pOom, 1);
  FUNC0( rc==0 );

  /* Insert 10 more records using pDb1. Stop when an OOM is encountered. */
  for(i=nRecord; i<nRecord+nIns; i++){
    FUNC9(pOom, pDb1, pData, i, &rc);
    if( rc ) break;
  }
  FUNC5(pOom, rc);

  /* Switch off OOM injection. Write a few rows using pDb2. Then check
  ** that the database may be successfully queried.  */
  FUNC6(pOom, 0);
  rc = 0;
  for(; i<nRecord+nIns && rc==0; i++){
    FUNC9(pOom, pDb2, pData, i, &rc);
  }
  for(i=0; i<nRecord+nIns; i++) FUNC7(pOom, pDb2, pData, i, &rc);
  FUNC6(pOom, 1);

  FUNC2(pDb1);
  FUNC2(pDb2);
  FUNC3(pData);
}