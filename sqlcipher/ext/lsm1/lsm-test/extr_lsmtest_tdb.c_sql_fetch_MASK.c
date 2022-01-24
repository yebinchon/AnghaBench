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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {int nAlloc; int /*<<< orphan*/  pFetch; int /*<<< orphan*/ * aAlloc; } ;
typedef  TYPE_1__ SqlDb ;

/* Variables and functions */
 int LSM_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
  TestDb *pTestDb, 
  void *pKey, 
  int nKey, 
  void **ppVal, 
  int *pnVal
){
  SqlDb *pDb = (SqlDb *)pTestDb;
  int rc;

  FUNC7(pDb->pFetch);
  if( pKey==0 ){
    FUNC0( ppVal==0 );
    FUNC0( pnVal==0 );
    return LSM_OK;
  }

  FUNC4(pDb->pFetch, 1, pKey, nKey, SQLITE_STATIC);
  rc = FUNC8(pDb->pFetch);
  if( rc==SQLITE_ROW ){
    int nVal = FUNC6(pDb->pFetch, 0);
    u8 *aVal = (void *)FUNC5(pDb->pFetch, 0);

    if( nVal>pDb->nAlloc ){
      FUNC1(pDb->aAlloc);
      pDb->aAlloc = (u8 *)FUNC2(nVal*2);
      pDb->nAlloc = nVal*2;
    }
    FUNC3(pDb->aAlloc, aVal, nVal);
    *pnVal = nVal;
    *ppVal = (void *)pDb->aAlloc;
  }else{
    *pnVal = -1;
    *ppVal = 0;
  }

  rc = FUNC7(pDb->pFetch);
  return rc;
}