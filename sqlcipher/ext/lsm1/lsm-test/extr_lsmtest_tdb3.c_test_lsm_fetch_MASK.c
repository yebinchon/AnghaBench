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
struct TYPE_2__ {int nBuf; int /*<<< orphan*/ * pCsr; void* pBuf; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ LsmDb ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  LSM_SEEK_EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void const**,int*) ; 
 int /*<<< orphan*/  FUNC5 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(
  TestDb *pTestDb, 
  void *pKey, 
  int nKey, 
  void **ppVal, 
  int *pnVal
){
  int rc;
  LsmDb *pDb = (LsmDb *)pTestDb;
  lsm_cursor *csr;

  if( pKey==0 ) return LSM_OK;

  if( pDb->pCsr==0 ){
    rc = FUNC1(pDb->db, &csr);
    if( rc!=LSM_OK ) return rc;
  }else{
    csr = pDb->pCsr;
  }

  rc = FUNC2(csr, pKey, nKey, LSM_SEEK_EQ);
  if( rc==LSM_OK ){
    if( FUNC3(csr) ){
      const void *pVal; int nVal;
      rc = FUNC4(csr, &pVal, &nVal);
      if( nVal>pDb->nBuf ){
        FUNC6(pDb->pBuf);
        pDb->pBuf = FUNC7(nVal*2);
        pDb->nBuf = nVal*2;
      }
      FUNC5(pDb->pBuf, pVal, nVal);
      *ppVal = pDb->pBuf;
      *pnVal = nVal;
    }else{
      *ppVal = 0;
      *pnVal = -1;
    }
  }
  if( pDb->pCsr==0 ){
    FUNC0(csr);
  }
  return rc;
}