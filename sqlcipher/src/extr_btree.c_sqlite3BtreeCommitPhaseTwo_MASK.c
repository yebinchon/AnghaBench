#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ inTransaction; scalar_t__ nTransaction; int /*<<< orphan*/  pPager; } ;
struct TYPE_9__ {scalar_t__ inTrans; int /*<<< orphan*/  iDataVersion; TYPE_2__* pBt; } ;
typedef  TYPE_1__ Btree ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ TRANS_NONE ; 
 scalar_t__ TRANS_READ ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(Btree *p, int bCleanup){

  if( p->inTrans==TRANS_NONE ) return SQLITE_OK;
  FUNC4(p);
  FUNC3(p);

  /* If the handle has a write-transaction open, commit the shared-btrees 
  ** transaction and set the shared state to TRANS_READ.
  */
  if( p->inTrans==TRANS_WRITE ){
    int rc;
    BtShared *pBt = p->pBt;
    FUNC0( pBt->inTransaction==TRANS_WRITE );
    FUNC0( pBt->nTransaction>0 );
    rc = FUNC6(pBt->pPager);
    if( rc!=SQLITE_OK && bCleanup==0 ){
      FUNC5(p);
      return rc;
    }
    p->iDataVersion--;  /* Compensate for pPager->iDataVersion++; */
    pBt->inTransaction = TRANS_READ;
    FUNC1(pBt);
  }

  FUNC2(p);
  FUNC5(p);
  return SQLITE_OK;
}