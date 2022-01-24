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
struct TYPE_3__ {int nIter; int nWrite; int nRange; int /*<<< orphan*/  defn; } ;
typedef  TYPE_1__ Datatest2 ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_CONFIG_AUTOFLUSH ; 
 int LSM_OK ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,void**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,int,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* FUNC14 (void*,int) ; 
 int /*<<< orphan*/ * FUNC15 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void FUNC19(
  const char *zSystem,            /* Database system to test */
  int bRecover,
  Datatest2 *p,                   /* Structure containing test parameters */
  int *pRc                        /* OUT: Error code */
){
  TestDb *pDb;
  TestDb *pControl;
  Datasource *pData;
  int i;
  int rc = LSM_OK;
  int iDot = 0;

  /* Start the test case, open a database and allocate the datasource. */
  pDb = FUNC15(zSystem, 1, &rc);
  pData = FUNC11(&p->defn);
  rc = FUNC8(&pControl);

  if( FUNC2(pDb) ){
    int nBuf = 32 * 1024 * 1024;
    FUNC1(FUNC2(pDb), LSM_CONFIG_AUTOFLUSH, &nBuf);
  }

  for(i=0; rc==0 && i<p->nIter; i++){
    void *pKey1; int nKey1;
    void *pKey2; int nKey2;
    int ii;
    int nRange = FUNC0(p->nIter*p->nWrite, p->nRange);

    for(ii=0; rc==0 && ii<p->nWrite; ii++){
      int iKey = (i*p->nWrite + ii) % p->nRange;
      FUNC18(pControl, pData, iKey, &rc);
      FUNC18(pDb, pData, iKey, &rc);
    }

    FUNC9(pData, i+1000000, &pKey1, &nKey1, 0, 0);
    pKey1 = FUNC14(pKey1, nKey1);
    FUNC9(pData, i+2000000, &pKey2, &nKey2, 0, 0);

    FUNC12(pDb, pKey1, nKey1, pKey2, nKey2, &rc);
    FUNC12(pControl, pKey1, nKey1, pKey2, nKey2, &rc);
    FUNC13(pKey1);

    FUNC7(pData, nRange, i, pControl, pDb, &rc);
    if( bRecover ){
      FUNC17(&pDb, &rc);
    }else{
      FUNC16(&pDb, &rc);
    }
    FUNC7(pData, nRange, i, pControl, pDb, &rc);

    /* Update the progress dots... */
    FUNC5(i, p->nIter, FUNC4(), &iDot);
  }

  FUNC6(&pDb);
  FUNC6(&pControl);
  FUNC10(pData);
  FUNC3(rc);
  *pRc = rc;
}