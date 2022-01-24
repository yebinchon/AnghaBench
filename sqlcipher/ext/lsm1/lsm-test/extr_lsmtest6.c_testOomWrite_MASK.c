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
typedef  int /*<<< orphan*/  OomTest ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(
  OomTest *pOom,
  lsm_db *pDb,
  void *pKey, int nKey,
  void *pVal, int nVal,
  int *pRc
){
  FUNC1(pOom, *pRc);
  if( *pRc==LSM_OK ){
    int rc;

    rc = FUNC0(pDb, pKey, nKey, pVal, nVal);
    FUNC1(pOom, rc);

    *pRc = rc;
  }
}