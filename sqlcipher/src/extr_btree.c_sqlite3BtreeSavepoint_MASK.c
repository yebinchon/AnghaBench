#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int btsFlags; scalar_t__ nPage; TYPE_1__* pPage1; int /*<<< orphan*/  pPager; } ;
struct TYPE_10__ {scalar_t__ inTrans; TYPE_3__* pBt; } ;
struct TYPE_9__ {scalar_t__ aData; } ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int BTS_INITIALLY_EMPTY ; 
 int SAVEPOINT_RELEASE ; 
 int SAVEPOINT_ROLLBACK ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

int FUNC7(Btree *p, int op, int iSavepoint){
  int rc = SQLITE_OK;
  if( p && p->inTrans==TRANS_WRITE ){
    BtShared *pBt = p->pBt;
    FUNC0( op==SAVEPOINT_RELEASE || op==SAVEPOINT_ROLLBACK );
    FUNC0( iSavepoint>=0 || (iSavepoint==-1 && op==SAVEPOINT_ROLLBACK) );
    FUNC4(p);
    if( op==SAVEPOINT_ROLLBACK ){
      rc = FUNC3(pBt, 0, 0);
    }
    if( rc==SQLITE_OK ){
      rc = FUNC6(pBt->pPager, op, iSavepoint);
    }
    if( rc==SQLITE_OK ){
      if( iSavepoint<0 && (pBt->btsFlags & BTS_INITIALLY_EMPTY)!=0 ){
        pBt->nPage = 0;
      }
      rc = FUNC2(pBt);
      pBt->nPage = FUNC1(28 + pBt->pPage1->aData);

      /* The database size was written into the offset 28 of the header
      ** when the transaction started, so we know that the value at offset
      ** 28 is nonzero. */
      FUNC0( pBt->nPage>0 );
    }
    FUNC5(p);
  }
  return rc;
}