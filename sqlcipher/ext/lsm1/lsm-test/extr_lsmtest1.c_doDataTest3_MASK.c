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
typedef  int u8 ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  aKey2 ;
typedef  int /*<<< orphan*/  aKey1 ;
typedef  int /*<<< orphan*/  aKey ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int nRange; int nValMax; int nIter; int nWrite; int nValMin; int nDelete; } ;
typedef  TYPE_1__ Datatest3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int,void**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int,int*,int,int*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*,int,char*,int,int*) ; 

__attribute__((used)) static void FUNC14(
  const char *zSystem,            /* Database system to test */
  Datatest3 *p,                   /* Structure containing test parameters */
  int *pRc                        /* OUT: Error code */
){
  int iDot = 0;
  int rc = *pRc;
  TestDb *pDb;
  u8 *abPresent;                  /* Array of boolean */
  char *aVal;                     /* Buffer to hold values */
  int i;
  u32 iSeq = 10;                  /* prng counter */

  abPresent = (u8 *)FUNC8(p->nRange+1);
  aVal = (char *)FUNC8(p->nValMax+1);
  pDb = FUNC9(zSystem, 1, &rc);

  for(i=0; i<p->nIter && rc==0; i++){
    int ii;

    FUNC4(i, p->nIter, FUNC3(), &iDot);

    /* Perform nWrite inserts */
    for(ii=0; ii<p->nWrite; ii++){
      u8 aKey[6];
      u32 iKey;
      int nVal;

      iKey = (FUNC11(iSeq++) % p->nRange) + 1;
      nVal = (FUNC11(iSeq++) % (p->nValMax - p->nValMin)) + p->nValMin;
      FUNC10(FUNC11(iSeq++), aVal, nVal);
      FUNC0(aKey, iKey);

      FUNC13(pDb, aKey, sizeof(aKey)-1, aVal, nVal, &rc);
      abPresent[iKey] = 1;
    }

    /* Perform nDelete deletes */
    for(ii=0; ii<p->nDelete; ii++){
      u8 aKey1[6];
      u8 aKey2[6];
      u32 iKey;

      iKey = (FUNC11(iSeq++) % p->nRange) + 1;
      FUNC0(aKey1, iKey-1);
      FUNC0(aKey2, iKey+1);

      FUNC7(pDb, aKey1, sizeof(aKey1)-1, aKey2, sizeof(aKey2)-1, &rc);
      abPresent[iKey] = 0;
    }

    FUNC12(&pDb, &rc);

    for(ii=1; rc==0 && ii<=p->nRange; ii++){
      int nDbVal;
      void *pDbVal;
      u8 aKey[6];
      int dbrc;

      FUNC0(aKey, ii);
      dbrc = FUNC1(pDb, aKey, sizeof(aKey)-1, &pDbVal, &nDbVal);
      FUNC6(0, dbrc, &rc);

      if( abPresent[ii] ){
        FUNC6(1, (nDbVal>0), &rc);
      }else{
        FUNC6(1, (nDbVal<0), &rc);
      }
    }
  }

  FUNC5(&pDb);
  FUNC2(rc);
  *pRc = rc;
}