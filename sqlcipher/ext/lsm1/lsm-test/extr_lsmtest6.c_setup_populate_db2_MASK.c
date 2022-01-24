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
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  LSMTEST6_TESTDB ; 
 int /*<<< orphan*/  LSM_CONFIG_AUTOFLUSH ; 
 int /*<<< orphan*/  LSM_CONFIG_BLOCK_SIZE ; 
 int /*<<< orphan*/  LSM_CONFIG_PAGE_SIZE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int,void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,void**,int*,void**,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC12(void){
  Datasource *pData;
  int ii;
  int rc;
  int nBlocksize = 64*1024;
  int nPagesize = 1024;
  int nWritebuffer = 4*1024;
  lsm_db *pDb;

  FUNC10(LSMTEST6_TESTDB);
  rc = FUNC5(FUNC7(), &pDb);
  if( rc==LSM_OK ) rc = FUNC6(pDb, LSMTEST6_TESTDB);

  FUNC3(pDb, LSM_CONFIG_BLOCK_SIZE, &nBlocksize); 
  FUNC3(pDb, LSM_CONFIG_PAGE_SIZE, &nPagesize); 
  FUNC3(pDb, LSM_CONFIG_AUTOFLUSH, &nWritebuffer); 

  pData = FUNC1();
  for(ii=0; rc==LSM_OK && ii<5000; ii++){
    void *pKey; int nKey;
    void *pVal; int nVal;
    FUNC8(pData, ii, &pKey, &nKey, &pVal, &nVal);
    FUNC4(pDb, pKey, nKey, pVal, nVal);
  }
  FUNC9(pData);
  FUNC2(pDb);

  FUNC11(LSMTEST6_TESTDB, "log");
  FUNC0( rc==LSM_OK );
}