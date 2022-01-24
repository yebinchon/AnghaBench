#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ inTransaction; int /*<<< orphan*/  nPage; TYPE_1__* pPage1; int /*<<< orphan*/  autoVacuum; } ;
struct TYPE_13__ {scalar_t__ inTrans; TYPE_3__* pBt; } ;
struct TYPE_12__ {int /*<<< orphan*/ * aData; int /*<<< orphan*/  pDbPage; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(Btree *p){
  int rc;
  BtShared *pBt = p->pBt;

  FUNC8(p);
  FUNC0( pBt->inTransaction==TRANS_WRITE && p->inTrans==TRANS_WRITE );
  if( !pBt->autoVacuum ){
    rc = SQLITE_DONE;
  }else{
    Pgno nOrig = FUNC1(pBt);
    Pgno nFree = FUNC3(&pBt->pPage1->aData[36]);
    Pgno nFin = FUNC2(pBt, nOrig, nFree);

    if( nOrig<nFin ){
      rc = SQLITE_CORRUPT_BKPT;
    }else if( nFree>0 ){
      rc = FUNC7(pBt, 0, 0);
      if( rc==SQLITE_OK ){
        FUNC5(pBt);
        rc = FUNC4(pBt, nFin, nOrig, 0);
      }
      if( rc==SQLITE_OK ){
        rc = FUNC10(pBt->pPage1->pDbPage);
        FUNC6(&pBt->pPage1->aData[28], pBt->nPage);
      }
    }else{
      rc = SQLITE_DONE;
    }
  }
  FUNC9(p);
  return rc;
}