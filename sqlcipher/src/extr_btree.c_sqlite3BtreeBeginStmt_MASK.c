#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int btsFlags; scalar_t__ inTransaction; int /*<<< orphan*/  pPager; } ;
struct TYPE_8__ {scalar_t__ inTrans; TYPE_1__* db; TYPE_3__* pBt; } ;
struct TYPE_7__ {int nSavepoint; } ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int BTS_READ_ONLY ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(Btree *p, int iStatement){
  int rc;
  BtShared *pBt = p->pBt;
  FUNC1(p);
  FUNC0( p->inTrans==TRANS_WRITE );
  FUNC0( (pBt->btsFlags & BTS_READ_ONLY)==0 );
  FUNC0( iStatement>0 );
  FUNC0( iStatement>p->db->nSavepoint );
  FUNC0( pBt->inTransaction==TRANS_WRITE );
  /* At the pager level, a statement transaction is a savepoint with
  ** an index greater than all savepoints created explicitly using
  ** SQL statements. It is illegal to open, release or rollback any
  ** such savepoints while the statement transaction savepoint is active.
  */
  rc = FUNC3(pBt->pPager, iStatement);
  FUNC2(p);
  return rc;
}