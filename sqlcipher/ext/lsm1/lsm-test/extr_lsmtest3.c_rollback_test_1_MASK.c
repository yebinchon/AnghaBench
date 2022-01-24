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
typedef  int /*<<< orphan*/  CksumDb ;

/* Variables and functions */
 int TEST_CKSUM_BYTES ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static int FUNC19(
  const char *zSystem,
  Datasource *pData
){
  const int nRepeat = 100;

  TestDb *pDb;
  int rc;
  int i;
  CksumDb *pCksum;
  char *zName;

  zName = FUNC0(zSystem);
  FUNC9(&rc, zName);
  FUNC17(zName);

  pCksum = FUNC12(pData, 0, nRepeat*100, 100);
  pDb = 0;
  rc = FUNC4(zSystem, 0, 1, &pDb);
  if( pDb && FUNC6(pDb)==0 ){
    FUNC8();
    goto skip_rollback_test;
  }

  for(i=0; i<nRepeat && rc==0; i++){
    char zCksum[TEST_CKSUM_BYTES];
    int nCurrent = (((i+1)/2) * 100);
    int nDbRow;
    int iTrans;

    /* Check that the database is the expected size. */
    nDbRow = FUNC16(pDb);
    FUNC14(nCurrent, nDbRow, &rc);

    for(iTrans=2; iTrans<=6 && rc==0; iTrans++){
      FUNC1(pDb, iTrans);
      FUNC18(pDb, pData, nCurrent, 100, &rc);
      nCurrent += 100;
    }

    FUNC13(pDb, zCksum);
    FUNC15(zCksum, FUNC11(pCksum, nCurrent), &rc);

    for(iTrans=6; iTrans>2 && rc==0; iTrans--){
      FUNC5(pDb, iTrans);
      nCurrent -= 100;
      FUNC13(pDb, zCksum);
      FUNC15(zCksum, FUNC11(pCksum, nCurrent), &rc);
    }

    if( i%2 ){
      FUNC5(pDb, 0);
      nCurrent -= 100;
      FUNC13(pDb, zCksum);
      FUNC15(zCksum, FUNC11(pCksum, nCurrent), &rc);
    }else{
      FUNC3(pDb, 0);
    }
  }
  FUNC7(rc);

 skip_rollback_test:
  FUNC2(pDb);
  FUNC10(pCksum);
  return rc;
}