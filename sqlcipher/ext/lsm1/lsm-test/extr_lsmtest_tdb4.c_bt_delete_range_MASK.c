#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bt_cursor ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_4__ {int /*<<< orphan*/  pBt; scalar_t__ bFastInsert; } ;
typedef  TYPE_1__ BtDb ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONTROL_FAST_INSERT_OP ; 
 int /*<<< orphan*/  BT_SEEK_GE ; 
 int FUNC0 (int,int) ; 
 int SQLITE4_INEXACT ; 
 int SQLITE4_NOTFOUND ; 
 int SQLITE4_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int,int*) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 int FUNC4 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,void const**,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(
  TestDb *pTestDb, 
  void *pKey1, int nKey1,
  void *pKey2, int nKey2
){
  BtDb *p = (BtDb*)pTestDb;
  bt_cursor *pCsr = 0;
  int rc = SQLITE4_OK;
  int iLevel;

  rc = FUNC2(p, 2, &iLevel);
  if( rc==SQLITE4_OK ){
    if( p->bFastInsert ) FUNC5(p->pBt, BT_CONTROL_FAST_INSERT_OP, 0);
    rc = FUNC9(p->pBt, 0, &pCsr);
  }
  while( rc==SQLITE4_OK ){
    const void *pK;
    int n;
    int nCmp;
    int res;

    rc = FUNC10(pCsr, pKey1, nKey1, BT_SEEK_GE);
    if( rc==SQLITE4_INEXACT ) rc = SQLITE4_OK;
    if( rc!=SQLITE4_OK ) break;

    rc = FUNC7(pCsr, &pK, &n);
    if( rc!=SQLITE4_OK ) break;

    nCmp = FUNC0(n, nKey1);
    res = FUNC4(pKey1, pK, nCmp);
    FUNC1( res<0 || (res==0 && nKey1<=n) );
    if( res==0 && nKey1==n ){
      rc = FUNC8(pCsr);
      if( rc!=SQLITE4_OK ) break;
      rc = FUNC7(pCsr, &pK, &n);
      if( rc!=SQLITE4_OK ) break;
    }

    nCmp = FUNC0(n, nKey2);
    res = FUNC4(pKey2, pK, nCmp);
    if( res<0 || (res==0 && nKey2<=n) ) break;
    
    rc = FUNC11(pCsr);
  }
  if( rc==SQLITE4_NOTFOUND ) rc = SQLITE4_OK;

  FUNC6(pCsr);

  rc = FUNC3(p, iLevel, rc);
  return rc;
}