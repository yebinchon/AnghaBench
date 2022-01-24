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
struct TYPE_3__ {int nRow; int nVerify; int /*<<< orphan*/  bTestScan; int /*<<< orphan*/  nTest; int /*<<< orphan*/  defn; } ;
typedef  TYPE_1__ Datatest1 ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static void FUNC14(
  const char *zSystem,            /* Database system to test */
  int bRecover,
  Datatest1 *p,                   /* Structure containing test parameters */
  int *pRc                        /* OUT: Error code */
){
  int i;
  int iDot;
  int rc = LSM_OK;
  Datasource *pData;
  TestDb *pDb;
  int iToggle = 0;

  /* Start the test case, open a database and allocate the datasource. */
  pDb = FUNC10(zSystem, 1, &rc);
  pData = FUNC7(&p->defn);

  i = 0;
  iDot = 0;
  while( rc==LSM_OK && i<p->nRow ){

    /* Insert some data */
    FUNC13(pDb, pData, i, p->nVerify, &rc);
    i += p->nVerify;

    if( iToggle ) FUNC1(pDb, 1, &rc);
    /* Check that the db content is correct. */
    FUNC8(pDb, pData, p->nRow, 0, i-1, p->nTest, p->bTestScan, &rc);
    if( iToggle ) FUNC5(pDb, 0, &rc);
    iToggle = (iToggle+1)%2;

    if( bRecover ){
      FUNC12(&pDb, &rc);
    }else{
      FUNC11(&pDb, &rc);
    }

    /* Check that the db content is still correct. */
    FUNC8(pDb, pData, p->nRow, 0, i-1, p->nTest, p->bTestScan, &rc);

    /* Update the progress dots... */
    FUNC4(i, p->nRow, FUNC3()/2, &iDot);
  }

  i = 0;
  iDot = 0;
  while( rc==LSM_OK && i<p->nRow ){

    /* Delete some entries */
    FUNC9(pDb, pData, i, p->nVerify, &rc);
    i += p->nVerify;

    /* Check that the db content is correct. */
    FUNC8(pDb, pData, p->nRow, i, p->nRow-1,p->nTest,p->bTestScan,&rc);

    /* Close and reopen the database. */
    if( bRecover ){
      FUNC12(&pDb, &rc);
    }else{
      FUNC11(&pDb, &rc);
    }

    /* Check that the db content is still correct. */
    FUNC8(pDb, pData, p->nRow, i, p->nRow-1,p->nTest,p->bTestScan,&rc);

    /* Update the progress dots... */
    FUNC4(i, p->nRow, FUNC3()/2, &iDot);
  }

  /* Free the datasource, close the database and finish the test case. */
  FUNC6(pData);
  FUNC0(pDb);
  FUNC2(rc);
  *pRc = rc;
}