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
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void*,int,void*,int,int*) ; 

void FUNC7(
  Datasource *pData,
  int nData,
  int iSeed,
  TestDb *pControl,
  TestDb *pDb,
  int *pRc
){
  int i;

  static int nCall = 0;
  nCall++;

  FUNC6(pControl, pDb, 0, 0, 0,         0, 0,         pRc);
  FUNC6(pControl, pDb, 1, 0, 0,         0, 0,         pRc);

  if( *pRc==0 ){
    int iKey1;
    int iKey2;
    void *pKey1; int nKey1;       /* Start key */
    void *pKey2; int nKey2;       /* Final key */

    iKey1 = FUNC5(iSeed) % nData;
    iKey2 = FUNC5(iSeed+1) % nData;
    FUNC1(pData, iKey1, &pKey2, &nKey1, 0, 0);
    pKey1 = FUNC4(nKey1+1);
    FUNC0(pKey1, pKey2, nKey1+1);
    FUNC1(pData, iKey2, &pKey2, &nKey2, 0, 0);

    FUNC6(pControl, pDb, 0, 0, 0,         pKey2, nKey2, pRc);
    FUNC6(pControl, pDb, 0, pKey1, nKey1, 0, 0,         pRc);
    FUNC6(pControl, pDb, 0, pKey1, nKey1, pKey2, nKey2, pRc);
    FUNC6(pControl, pDb, 1, 0, 0,         pKey2, nKey2, pRc);
    FUNC6(pControl, pDb, 1, pKey1, nKey1, 0, 0,         pRc);
    FUNC6(pControl, pDb, 1, pKey1, nKey1, pKey2, nKey2, pRc);
    FUNC3(pKey1);
  }

  for(i=0; i<nData && *pRc==0; i++){
    void *pKey; int nKey;
    FUNC1(pData, i, &pKey, &nKey, 0, 0);
    FUNC2(pControl, pDb, pKey, nKey, pRc);
  }
}