#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nVdbeRead; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_12__ {scalar_t__ nTransaction; scalar_t__ inTransaction; scalar_t__ bDoTruncate; } ;
struct TYPE_11__ {scalar_t__ inTrans; TYPE_1__* db; TYPE_3__* pBt; } ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 scalar_t__ TRANS_NONE ; 
 scalar_t__ TRANS_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(Btree *p){
  BtShared *pBt = p->pBt;
  sqlite3 *db = p->db;
  FUNC0( FUNC4(p) );

#ifndef SQLITE_OMIT_AUTOVACUUM
  pBt->bDoTruncate = 0;
#endif
  if( p->inTrans>TRANS_NONE && db->nVdbeRead>1 ){
    /* If there are other active statements that belong to this database
    ** handle, downgrade to a read-only transaction. The other statements
    ** may still be reading from the database.  */
    FUNC3(p);
    p->inTrans = TRANS_READ;
  }else{
    /* If the handle had any kind of transaction open, decrement the 
    ** transaction count of the shared btree. If the transaction count 
    ** reaches 0, set the shared state to TRANS_NONE. The unlockBtreeIfUnused()
    ** call below will unlock the pager.  */
    if( p->inTrans!=TRANS_NONE ){
      FUNC2(p);
      pBt->nTransaction--;
      if( 0==pBt->nTransaction ){
        pBt->inTransaction = TRANS_NONE;
      }
    }

    /* Set the current transaction state to TRANS_NONE and unlock the 
    ** pager if this call closed the only read or write transaction.  */
    p->inTrans = TRANS_NONE;
    FUNC5(pBt);
  }

  FUNC1(p);
}