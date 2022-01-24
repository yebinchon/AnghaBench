#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_cursor ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {int /*<<< orphan*/ * pCsr; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ LsmDb ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  LSM_SEEK_GE ; 
 int /*<<< orphan*/  LSM_SEEK_LE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const**,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void const**,int*) ; 
 int FUNC11 (void*,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(
  TestDb *pTestDb,
  void *pCtx,
  int bReverse,
  void *pFirst, int nFirst,
  void *pLast, int nLast,
  void (*xCallback)(void *, void *, int , void *, int)
){
  LsmDb *pDb = (LsmDb *)pTestDb;
  lsm_cursor *csr;
  lsm_cursor *csr2 = 0;
  int rc;

  if( pDb->pCsr==0 ){
    rc = FUNC6(pDb->db, &csr);
    if( rc!=LSM_OK ) return rc;
  }else{
    rc = LSM_OK;
    csr = pDb->pCsr;
  }

  /* To enhance testing, if both pLast and pFirst are defined, seek the
  ** cursor to the "end" boundary here. Then the next block seeks it to
  ** the "start" ready for the scan. The point is to test that cursors
  ** can be reused.  */
  if( pLast && pFirst ){
    if( bReverse ){
      rc = FUNC8(csr, pFirst, nFirst, LSM_SEEK_LE);
    }else{
      rc = FUNC8(csr, pLast, nLast, LSM_SEEK_GE);
    }
  }

  if( bReverse ){
    if( pLast ){
      rc = FUNC8(csr, pLast, nLast, LSM_SEEK_LE);
    }else{
      rc = FUNC4(csr);
    }
  }else{
    if( pFirst ){
      rc = FUNC8(csr, pFirst, nFirst, LSM_SEEK_GE);
    }else{
      rc = FUNC2(csr);
    }
  }

  while( rc==LSM_OK && FUNC9(csr) ){
    const void *pKey; int nKey;
    const void *pVal; int nVal;
    int cmp;

    FUNC3(csr, &pKey, &nKey);
    FUNC10(csr, &pVal, &nVal);

    if( bReverse && pFirst ){
      cmp = FUNC11(pFirst, pKey, FUNC0(nKey, nFirst));
      if( cmp>0 || (cmp==0 && nFirst>nKey) ) break;
    }else if( bReverse==0 && pLast ){
      cmp = FUNC11(pLast, pKey, FUNC0(nKey, nLast));
      if( cmp<0 || (cmp==0 && nLast<nKey) ) break;
    }

    xCallback(pCtx, (void *)pKey, nKey, (void *)pVal, nVal);

    if( bReverse ){
      rc = FUNC7(csr);
    }else{
      rc = FUNC5(csr);
    }
  }

  if( pDb->pCsr==0 ){
    FUNC1(csr);
  }
  return rc;
}