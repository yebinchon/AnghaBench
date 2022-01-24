#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ inTrans; int /*<<< orphan*/ * pBt; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ Btree ;
typedef  int /*<<< orphan*/  BtShared ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(Btree *p, int iTable, int *pnChange){
  int rc;
  BtShared *pBt = p->pBt;
  FUNC4(p);
  FUNC0( p->inTrans==TRANS_WRITE );

  rc = FUNC3(pBt, (Pgno)iTable, 0);

  if( SQLITE_OK==rc ){
    /* Invalidate all incrblob cursors open on table iTable (assuming iTable
    ** is the root of a table b-tree - if it is not, the following call is
    ** a no-op).  */
    FUNC2(p, (Pgno)iTable, 0, 1);
    rc = FUNC1(pBt, (Pgno)iTable, 0, pnChange);
  }
  FUNC5(p);
  return rc;
}