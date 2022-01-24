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

/* Variables and functions */
 int LSM_MISUSE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  LSM_SEEK_EQ ; 
 int /*<<< orphan*/  LSM_SEEK_GE ; 
 int /*<<< orphan*/  LSM_SEEK_LE ; 
 int /*<<< orphan*/  LSM_SEEK_LEFAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,void const**,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,void const*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int*) ; 

__attribute__((used)) static void FUNC10(lsm_db *pDb, int *pRc){
  int ret;
  lsm_cursor *pCsr;
  lsm_cursor *pCsr2;
  int nKey;
  const void *pKey;

  ret = FUNC5(pDb, &pCsr);
  FUNC9(LSM_OK, ret, pRc);

  ret = FUNC4(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);
  ret = FUNC6(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);

  ret = FUNC7(pCsr, "jjj", 3, LSM_SEEK_GE);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC4(pCsr);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC6(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);

  ret = FUNC7(pCsr, "jjj", 3, LSM_SEEK_LE);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC4(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);
  ret = FUNC6(pCsr);
  FUNC9(LSM_OK, ret, pRc);

  ret = FUNC7(pCsr, "jjj", 3, LSM_SEEK_LEFAST);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC4(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);
  ret = FUNC6(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);

  ret = FUNC2(pCsr, &pKey, &nKey);
  FUNC9(LSM_OK, ret, pRc);

  ret = FUNC5(pDb, &pCsr2);
  FUNC9(LSM_OK, ret, pRc);

  ret = FUNC7(pCsr2, pKey, nKey, LSM_SEEK_EQ);
  FUNC9(LSM_OK, ret, pRc);
  FUNC9(1, FUNC8(pCsr2), pRc);
  ret = FUNC4(pCsr2);
  FUNC9(LSM_MISUSE, ret, pRc);
  ret = FUNC6(pCsr2);
  FUNC9(LSM_MISUSE, ret, pRc);

  FUNC0(pCsr2);

  ret = FUNC1(pCsr);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC4(pCsr);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC6(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);

  ret = FUNC3(pCsr);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC6(pCsr);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC4(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);

  ret = FUNC1(pCsr);
  while( FUNC8(pCsr) ){
    ret = FUNC4(pCsr);
    FUNC9(LSM_OK, ret, pRc);
  }
  ret = FUNC4(pCsr);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC6(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);

  ret = FUNC3(pCsr);
  while( FUNC8(pCsr) ){
    ret = FUNC6(pCsr);
    FUNC9(LSM_OK, ret, pRc);
  }
  ret = FUNC6(pCsr);
  FUNC9(LSM_OK, ret, pRc);
  ret = FUNC4(pCsr);
  FUNC9(LSM_MISUSE, ret, pRc);

  FUNC0(pCsr);
}