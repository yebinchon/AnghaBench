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
 int /*<<< orphan*/  BT_SEEK_LE ; 
 int FUNC0 (int,int) ; 
 int SQLITE4_INEXACT ; 
 int SQLITE4_NOTFOUND ; 
 int SQLITE4_OK ; 
 int FUNC1 (TYPE_1__*,int,int*) ; 
 int FUNC2 (TYPE_1__*,int,int) ; 
 int FUNC3 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void const**,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,void const**,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
  TestDb *pTestDb,
  void *pCtx,
  int bReverse,
  void *pFirst, int nFirst,
  void *pLast, int nLast,
  void (*xCallback)(void *, void *, int , void *, int)
){
  BtDb *p = (BtDb*)pTestDb;
  bt_cursor *pCsr = 0;
  int rc;
  int iLevel;

  rc = FUNC1(p, 1, &iLevel);

  if( rc==SQLITE4_OK ){
    if( p->bFastInsert ) FUNC4(p->pBt, BT_CONTROL_FAST_INSERT_OP, 0);
    rc = FUNC10(p->pBt, 0, &pCsr);
  }
  if( rc==SQLITE4_OK ){
    if( bReverse ){
      if( pLast ){
        rc = FUNC12(pCsr, pLast, nLast, BT_SEEK_LE);
      }else{
        rc = FUNC8(pCsr);
      }
    }else{
      rc = FUNC12(pCsr, pFirst, nFirst, BT_SEEK_GE);
    }
    if( rc==SQLITE4_INEXACT ) rc = SQLITE4_OK;

    while( rc==SQLITE4_OK ){
      const void *pK = 0; int nK = 0;
      const void *pV = 0; int nV = 0;

      rc = FUNC7(pCsr, &pK, &nK);
      if( rc==SQLITE4_OK ){
        rc = FUNC6(pCsr, 0, -1, &pV, &nV);
      }

      if( rc!=SQLITE4_OK ) break;
      if( bReverse ){
        if( pFirst ){
          int res;
          int nCmp = FUNC0(nK, nFirst);
          res = FUNC3(pFirst, pK, nCmp);
          if( res>0 || (res==0 && nK<nFirst) ) break;
        }
      }else{
        if( pLast ){
          int res;
          int nCmp = FUNC0(nK, nLast);
          res = FUNC3(pLast, pK, nCmp);
          if( res<0 || (res==0 && nK>nLast) ) break;
        }
      }

      xCallback(pCtx, (void*)pK, nK, (void*)pV, nV);
      if( bReverse ){
        rc = FUNC11(pCsr);
      }else{
        rc = FUNC9(pCsr);
      }
    }
    if( rc==SQLITE4_NOTFOUND ) rc = SQLITE4_OK;

    FUNC5(pCsr);
  }

  rc = FUNC2(p, iLevel, rc);
  return rc;
}