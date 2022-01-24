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
typedef  int /*<<< orphan*/  TestDb ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int TEST_CKSUM_BYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (char*,char*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int const,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int const,int*) ; 

__attribute__((used)) static void FUNC11(int *pRc){
  const int nWrite = 2000;
  const int nStep = 10;
  const int iWriteStart = 20000;
  int rc = 0;
  TestDb *pDb = 0;
  Datasource *pData = 0;

  rc = FUNC2("autowork=0", "testdb.lsm", 1, &pDb);
  if( rc==0 ){
    int iDot = 0;
    char zCksum[TEST_CKSUM_BYTES];
    int i;
    FUNC1(pDb, &pData);
    FUNC6(pDb, zCksum);
    FUNC3(pDb, 2, &rc);
    for(i=0; rc==0 && i<nWrite; i+=nStep){
      FUNC5(i, nWrite, FUNC4(), &iDot);
      FUNC10(pDb, pData, iWriteStart+i, nStep, &rc);
      FUNC0("testdb.lsm", zCksum, &rc);
    }
  }
  FUNC8(pDb, 0, &rc);
  FUNC7(&pDb);
  FUNC9(pData);
  *pRc = rc;
}