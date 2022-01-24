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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,void const**,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,void const**,int*) ; 
 scalar_t__ FUNC6 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(
  OomTest *pOom,
  lsm_db *pDb,
  void *pKey, int nKey,
  void *pVal, int nVal,
  int *pRc
){
  FUNC8(pOom, *pRc);
  if( *pRc==LSM_OK ){
    lsm_cursor *pCsr;
    int rc;

    rc = FUNC2(pDb, &pCsr);
    if( rc==LSM_OK ) rc = FUNC3(pCsr, pKey, nKey, 0);
    FUNC8(pOom, rc);

    if( rc==LSM_OK ){
      const void *p; int n;
      FUNC7(pOom, FUNC4(pCsr));

      rc = FUNC1(pCsr, &p, &n);
      FUNC8(pOom, rc);
      FUNC7(pOom, rc!=LSM_OK || (n==nKey && FUNC6(pKey, p, nKey)==0) );
    }

    if( rc==LSM_OK ){
      const void *p; int n;
      FUNC7(pOom, FUNC4(pCsr));

      rc = FUNC5(pCsr, &p, &n);
      FUNC8(pOom, rc);
      FUNC7(pOom, rc!=LSM_OK || (n==nVal && FUNC6(pVal, p, nVal)==0) );
    }

    FUNC0(pCsr);
    *pRc = rc;
  }
}