#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_18__ {scalar_t__ inTransaction; int nPage; int /*<<< orphan*/  pPager; } ;
struct TYPE_17__ {scalar_t__ inTrans; TYPE_3__* pBt; } ;
struct TYPE_16__ {scalar_t__ aData; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int SQLITE_ABORT_ROLLBACK ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_READ ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,int,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int FUNC15(Btree *p, int tripCode, int writeOnly){
  int rc;
  BtShared *pBt = p->pBt;
  MemPage *pPage1;

  FUNC0( writeOnly==1 || writeOnly==0 );
  FUNC0( tripCode==SQLITE_ABORT_ROLLBACK || tripCode==SQLITE_OK );
  FUNC9(p);
  if( tripCode==SQLITE_OK ){
    rc = tripCode = FUNC8(pBt, 0, 0);
    if( rc ) writeOnly = 0;
  }else{
    rc = SQLITE_OK;
  }
  if( tripCode ){
    int rc2 = FUNC11(p, tripCode, writeOnly);
    FUNC0( rc==SQLITE_OK || (writeOnly==0 && rc2==SQLITE_OK) );
    if( rc2!=SQLITE_OK ) rc = rc2;
  }
  FUNC4(p);

  if( p->inTrans==TRANS_WRITE ){
    int rc2;

    FUNC0( TRANS_WRITE==pBt->inTransaction );
    rc2 = FUNC13(pBt->pPager);
    if( rc2!=SQLITE_OK ){
      rc = rc2;
    }

    /* The rollback may have destroyed the pPage1->aData value.  So
    ** call btreeGetPage() on page 1 again to make
    ** sure pPage1->aData is set correctly. */
    if( FUNC3(pBt, 1, &pPage1, 0)==SQLITE_OK ){
      int nPage = FUNC6(28+(u8*)pPage1->aData);
      FUNC14( nPage==0 );
      if( nPage==0 ) FUNC12(pBt->pPager, &nPage);
      FUNC14( pBt->nPage!=nPage );
      pBt->nPage = nPage;
      FUNC7(pPage1);
    }
    FUNC0( FUNC5(pBt, 1)==0 );
    pBt->inTransaction = TRANS_READ;
    FUNC1(pBt);
  }

  FUNC2(p);
  FUNC10(p);
  return rc;
}