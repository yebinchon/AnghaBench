#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ DatasourceDefn ;
typedef  int /*<<< orphan*/  Datasource ;
typedef  int /*<<< orphan*/  CksumDb ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_DATASOURCE_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int const,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,void**,int*,void**,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void FUNC16(int bCompress, int *pRc){
  const char *DBNAME = "testdb.lsm";
  const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 12, 16, 1000, 1000};

  const int nIter = 200;
  const int nInsert = 20;

  int i;
  int iDot = 0;
  Datasource *pData;
  CksumDb *pCksumDb;
  TestDb *pDb;

  /* Allocate datasource. And calculate the expected checksums. */
  pData = FUNC13(&defn);
  pCksumDb = FUNC9(pData, 100, 100+nInsert, 1);

  /* Setup and save the initial database. */
  FUNC15("", DBNAME, pData, 100, pRc);

  for(i=0; i<nIter && *pRc==0; i++){
    int iIns;
    int testrc = 0;

    FUNC6(i, nIter, FUNC5(), &iDot);

    /* Restore and open the database. */
    FUNC14(DBNAME, "log");
    testrc = FUNC2("safety=2", DBNAME, 0, &pDb);
    FUNC0( testrc==0 );

    /* Insert nInsert records into the database. Crash midway through. */
    FUNC3(pDb, 1 + (i%(nInsert+2)));
    for(iIns=0; iIns<nInsert; iIns++){
      void *pKey; int nKey;
      void *pVal; int nVal;

      FUNC11(pData, 100+iIns, &pKey, &nKey, &pVal, &nVal);
      testrc = FUNC4(pDb, pKey, nKey, pVal, nVal);
      if( testrc ) break;
    }
    FUNC1(pDb);

    /* Check that no data was lost when the system crashed. */
    FUNC10(DBNAME, bCompress,
      FUNC8(pCksumDb, 100 + iIns),
      FUNC8(pCksumDb, 100 + iIns + 1),
      pRc
    );
  }

  FUNC12(pData);
  FUNC7(pCksumDb);
}