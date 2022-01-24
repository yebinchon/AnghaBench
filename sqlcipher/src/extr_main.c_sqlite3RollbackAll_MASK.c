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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_10__ {scalar_t__ busy; } ;
struct TYPE_12__ {int mDbFlags; int nDb; int /*<<< orphan*/  pRollbackArg; int /*<<< orphan*/  (* xRollbackCallback ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  autoCommit; int /*<<< orphan*/  flags; scalar_t__ nDeferredImmCons; scalar_t__ nDeferredCons; TYPE_2__* aDb; TYPE_1__ init; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_11__ {int /*<<< orphan*/ * pBt; } ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int DBFLAG_SchemaChange ; 
 scalar_t__ SQLITE_DeferFKs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(sqlite3 *db, int tripCode){
  int i;
  int inTrans = 0;
  int schemaChange;
  FUNC0( FUNC10(db->mutex) );
  FUNC1();

  /* Obtain all b-tree mutexes before making any calls to BtreeRollback(). 
  ** This is important in case the transaction being rolled back has
  ** modified the database schema. If the b-tree mutexes are not taken
  ** here, then another shared-cache connection might sneak in between
  ** the database rollback and schema reset, which can cause false
  ** corruption reports in some cases.  */
  FUNC2(db);
  schemaChange = (db->mDbFlags & DBFLAG_SchemaChange)!=0 && db->init.busy==0;

  for(i=0; i<db->nDb; i++){
    Btree *p = db->aDb[i].pBt;
    if( p ){
      if( FUNC3(p) ){
        inTrans = 1;
      }
      FUNC5(p, tripCode, !schemaChange);
    }
  }
  FUNC9(db);
  FUNC6();

  if( schemaChange ){
    FUNC7(db, 0);
    FUNC8(db);
  }
  FUNC4(db);

  /* Any deferred constraint violations have now been resolved. */
  db->nDeferredCons = 0;
  db->nDeferredImmCons = 0;
  db->flags &= ~(u64)SQLITE_DeferFKs;

  /* If one has been configured, invoke the rollback-hook callback */
  if( db->xRollbackCallback && (inTrans || !db->autoCommit) ){
    db->xRollbackCallback(db->pRollbackArg);
  }
}