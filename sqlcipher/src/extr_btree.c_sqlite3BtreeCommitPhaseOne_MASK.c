#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pPager; int /*<<< orphan*/  nPage; scalar_t__ bDoTruncate; scalar_t__ autoVacuum; } ;
struct TYPE_7__ {scalar_t__ inTrans; TYPE_2__* pBt; } ;
typedef  TYPE_1__ Btree ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(Btree *p, const char *zMaster){
  int rc = SQLITE_OK;
  if( p->inTrans==TRANS_WRITE ){
    BtShared *pBt = p->pBt;
    FUNC1(p);
#ifndef SQLITE_OMIT_AUTOVACUUM
    if( pBt->autoVacuum ){
      rc = FUNC0(pBt);
      if( rc!=SQLITE_OK ){
        FUNC2(p);
        return rc;
      }
    }
    if( pBt->bDoTruncate ){
      FUNC4(pBt->pPager, pBt->nPage);
    }
#endif
    rc = FUNC3(pBt->pPager, zMaster, 0);
    FUNC2(p);
  }
  return rc;
}