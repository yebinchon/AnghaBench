
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_10__ {scalar_t__ busy; } ;
struct TYPE_12__ {int mDbFlags; int nDb; int pRollbackArg; int (* xRollbackCallback ) (int ) ;int autoCommit; int flags; scalar_t__ nDeferredImmCons; scalar_t__ nDeferredCons; TYPE_2__* aDb; TYPE_1__ init; int mutex; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_11__ {int * pBt; } ;
typedef int Btree ;


 int DBFLAG_SchemaChange ;
 scalar_t__ SQLITE_DeferFKs ;
 int assert (int ) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3BtreeEnterAll (TYPE_3__*) ;
 scalar_t__ sqlite3BtreeIsInTrans (int *) ;
 int sqlite3BtreeLeaveAll (TYPE_3__*) ;
 int sqlite3BtreeRollback (int *,int,int) ;
 int sqlite3EndBenignMalloc () ;
 int sqlite3ExpirePreparedStatements (TYPE_3__*,int ) ;
 int sqlite3ResetAllSchemasOfConnection (TYPE_3__*) ;
 int sqlite3VtabRollback (TYPE_3__*) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (int ) ;

void sqlite3RollbackAll(sqlite3 *db, int tripCode){
  int i;
  int inTrans = 0;
  int schemaChange;
  assert( sqlite3_mutex_held(db->mutex) );
  sqlite3BeginBenignMalloc();







  sqlite3BtreeEnterAll(db);
  schemaChange = (db->mDbFlags & DBFLAG_SchemaChange)!=0 && db->init.busy==0;

  for(i=0; i<db->nDb; i++){
    Btree *p = db->aDb[i].pBt;
    if( p ){
      if( sqlite3BtreeIsInTrans(p) ){
        inTrans = 1;
      }
      sqlite3BtreeRollback(p, tripCode, !schemaChange);
    }
  }
  sqlite3VtabRollback(db);
  sqlite3EndBenignMalloc();

  if( schemaChange ){
    sqlite3ExpirePreparedStatements(db, 0);
    sqlite3ResetAllSchemasOfConnection(db);
  }
  sqlite3BtreeLeaveAll(db);


  db->nDeferredCons = 0;
  db->nDeferredImmCons = 0;
  db->flags &= ~(u64)SQLITE_DeferFKs;


  if( db->xRollbackCallback && (inTrans || !db->autoCommit) ){
    db->xRollbackCallback(db->pRollbackArg);
  }
}
