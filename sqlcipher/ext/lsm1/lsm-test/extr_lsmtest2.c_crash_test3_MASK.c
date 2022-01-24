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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int const,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static void FUNC14(int bCompress, int *pRc){
  const char *DBNAME = "testdb.lsm";
  const int nIter = 100;
  const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 12, 16, 1000, 1000};

  int i;
  int iDot = 0;
  Datasource *pData;
  CksumDb *pCksumDb;
  TestDb *pDb;

  /* Allocate datasource. And calculate the expected checksums. */
  pData = FUNC9(&defn);
  pCksumDb = FUNC6(pData, 110, 150, 10);

  /* Setup and save the initial database. */
  FUNC12("", DBNAME, pData, 100, pRc);

  for(i=0; i<nIter && *pRc==0; i++){
    int iOpen;
    FUNC3(i, nIter, FUNC2(), &iDot);
    FUNC11(DBNAME, "log");

    for(iOpen=0; iOpen<5; iOpen++){
      /* Open the database. Insert 10 more records. */
      pDb = FUNC10("lsm", 0, pRc);
      FUNC13(pDb, pData, 100+iOpen*10, 10, pRc);

      /* Schedule a crash simulation then close the db. */
      FUNC1(pDb, 1 + (i%2));
      FUNC0(pDb);

      /* Open the database and check that the crash did not cause any
      ** data loss.  */
      FUNC7(DBNAME, bCompress,
        FUNC5(pCksumDb, 110 + iOpen*10), 0,
        pRc
      );
    }
  }

  FUNC8(pData);
  FUNC4(pCksumDb);
}