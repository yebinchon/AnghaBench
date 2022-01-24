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
typedef  int /*<<< orphan*/  bt_cursor ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {int nBuffer; int /*<<< orphan*/  pBt; int /*<<< orphan*/ * aBuffer; scalar_t__ bFastInsert; } ;
typedef  TYPE_1__ BtDb ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONTROL_FAST_INSERT_OP ; 
 int /*<<< orphan*/  BT_SEEK_EQ ; 
 int SQLITE4_INEXACT ; 
 int SQLITE4_NOTFOUND ; 
 int SQLITE4_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void const**,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
  TestDb *pTestDb, 
  void *pK, int nK, 
  void **ppVal, int *pnVal
){
  BtDb *p = (BtDb*)pTestDb;
  bt_cursor *pCsr = 0;
  int iLevel;
  int rc = SQLITE4_OK;

  iLevel = FUNC10(p->pBt);
  if( iLevel==0 ){ 
    rc = FUNC3(p->pBt, 1); 
    if( rc!=SQLITE4_OK ) return rc;
  }

  if( p->bFastInsert ) FUNC5(p->pBt, BT_CONTROL_FAST_INSERT_OP, 0);
  rc = FUNC8(p->pBt, 0, &pCsr);
  if( rc==SQLITE4_OK ){
    rc = FUNC9(pCsr, pK, nK, BT_SEEK_EQ);
    if( rc==SQLITE4_OK ){
      const void *pV = 0;
      int nV = 0;
      rc = FUNC7(pCsr, 0, -1, &pV, &nV);
      if( rc==SQLITE4_OK ){
        if( nV>p->nBuffer ){
          FUNC0(p->aBuffer);
          p->aBuffer = (u8*)FUNC1(nV*2);
          p->nBuffer = nV*2;
        }
        FUNC2(p->aBuffer, pV, nV);
        *pnVal = nV;
        *ppVal = (void*)(p->aBuffer);
      }

    }else if( rc==SQLITE4_INEXACT || rc==SQLITE4_NOTFOUND ){
      *ppVal = 0;
      *pnVal = -1;
      rc = SQLITE4_OK;
    }
    FUNC6(pCsr);
  }

  if( iLevel==0 ) FUNC4(p->pBt, 0); 
  return rc;
}