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
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  lsm_cursor ;
typedef  int /*<<< orphan*/  OomTest ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  LSM_SEEK_GE ; 
 int /*<<< orphan*/  LSM_SEEK_LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,void const**,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,void const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,void const**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(
  OomTest *pOom, 
  lsm_db *pDb, 
  int bReverse,
  const void *pKey, int nKey,
  int nScan,
  int *pRc
){
  if( *pRc==0 ){
    int rc;
    int iScan = 0;
    lsm_cursor *pCsr;
    int (*xAdvance)(lsm_cursor *) = 0;
    

    rc = FUNC3(pDb, &pCsr);
    FUNC8(pOom, rc);

    if( rc==LSM_OK ){
      if( bReverse ){
        rc = FUNC5(pCsr, pKey, nKey, LSM_SEEK_LE);
        xAdvance = lsm_csr_prev;
      }else{
        rc = FUNC5(pCsr, pKey, nKey, LSM_SEEK_GE);
        xAdvance = lsm_csr_next;
      }
    }
    FUNC8(pOom, rc);

    while( rc==LSM_OK && FUNC6(pCsr) && iScan<nScan ){
      const void *p; int n;

      rc = FUNC1(pCsr, &p, &n);
      FUNC8(pOom, rc);
      if( rc==LSM_OK ){
        rc = FUNC7(pCsr, &p, &n);
        FUNC8(pOom, rc);
      }
      if( rc==LSM_OK ){
        rc = xAdvance(pCsr);
        FUNC8(pOom, rc);
      }
      iScan++;
    }

    FUNC0(pCsr);
    *pRc = rc;
  }
}