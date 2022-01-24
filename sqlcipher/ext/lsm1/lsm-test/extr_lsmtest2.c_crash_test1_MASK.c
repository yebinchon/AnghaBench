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
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ DatasourceDefn ;
typedef  int /*<<< orphan*/  Datasource ;
typedef  int /*<<< orphan*/  CksumDb ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_DATASOURCE_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int const,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void FUNC19(int bCompress, int *pRc){
  const char *DBNAME = "testdb.lsm";
  const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 12, 16, 200, 200};

  const int nRow = 5000;          /* Database size */
  const int nIter = 200;          /* Number of test iterations */
  const int nWork = 20;           /* Maximum lsm_work() calls per iteration */
  const int nPage = 15;           /* Pages per lsm_work call */

  int i;
  int iDot = 0;
  Datasource *pData;
  CksumDb *pCksumDb;
  TestDb *pDb;
  char *zCfg;

  const char *azConfig[2] = {
    "page_size=1024 block_size=65536 autoflush=16384 safety=2 mmap=0", 
    "page_size=1024 block_size=65536 autoflush=16384 safety=2 "
    " compression=1 mmap=0"
  };
  FUNC0( bCompress==0 || bCompress==1 );

  /* Allocate datasource. And calculate the expected checksums. */
  pData = FUNC14(&defn);
  pCksumDb = FUNC11(pData, nRow, nRow, 1);

  /* Setup and save the initial database. */

  zCfg = FUNC16("%s automerge=7", azConfig[bCompress]);
  FUNC18(zCfg, DBNAME, pData, 5000, pRc);
  FUNC15(zCfg);

  for(i=0; i<nIter && *pRc==0; i++){
    int iWork;
    int testrc = 0;

    FUNC8(i, nIter, FUNC7(), &iDot);

    /* Restore and open the database. */
    FUNC17(DBNAME, "log");
    testrc = FUNC5(azConfig[bCompress], DBNAME, 0, &pDb);
    FUNC0( testrc==0 );

    /* Call lsm_work() on the db */
    FUNC6(pDb, 1 + (i%(nWork*2)));
    for(iWork=0; testrc==0 && iWork<nWork; iWork++){
      int nWrite = 0;
      lsm_db *db = FUNC4(pDb);
      testrc = FUNC2(db, 0, nPage, &nWrite);
      /* assert( testrc!=0 || nWrite>0 ); */
      if( testrc==0 ) testrc = FUNC1(db, 0);
    }
    FUNC3(pDb);

    /* Check that the database content is still correct */
    FUNC12(DBNAME, 
        bCompress, FUNC10(pCksumDb, nRow), 0, pRc);
  }

  FUNC9(pCksumDb);
  FUNC13(pData);
}