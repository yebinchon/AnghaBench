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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {int /*<<< orphan*/ ** apScan; } ;
typedef  TYPE_1__ SqlDb ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
  TestDb *pTestDb,
  void *pCtx,
  int bReverse,
  void *pFirst, int nFirst,
  void *pLast, int nLast,
  void (*xCallback)(void *, void *, int , void *, int)
){
  SqlDb *pDb = (SqlDb *)pTestDb;
  sqlite3_stmt *pScan;

  FUNC0( bReverse==1 || bReverse==0 );
  pScan = pDb->apScan[(pFirst==0) + (pLast==0)*2 + bReverse*4];

  if( pFirst ) FUNC1(pScan, 1, pFirst, nFirst, SQLITE_STATIC);
  if( pLast ) FUNC1(pScan, 2, pLast, nLast, SQLITE_STATIC);

  while( SQLITE_ROW==FUNC5(pScan) ){
    void *pKey; int nKey;
    void *pVal; int nVal;

    nKey = FUNC3(pScan, 0);
    pKey = (void *)FUNC2(pScan, 0);
    nVal = FUNC3(pScan, 1);
    pVal = (void *)FUNC2(pScan, 1);

    xCallback(pCtx, pKey, nKey, pVal, nVal);
  }
  return FUNC4(pScan);
}