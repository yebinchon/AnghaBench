
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_19__ {int autoCommit; int nVdbeWrite; scalar_t__ nStatement; scalar_t__ nVdbeActive; scalar_t__ nVdbeRead; scalar_t__ mallocFailed; int flags; scalar_t__ nDeferredImmCons; scalar_t__ nDeferredCons; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_20__ {scalar_t__ magic; int rc; scalar_t__ pc; scalar_t__ readOnly; scalar_t__ errorAction; scalar_t__ bIsReader; scalar_t__ nChange; scalar_t__ changeCntOn; int zErrMsg; scalar_t__ usesStmtJournal; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;


 scalar_t__ NEVER (scalar_t__) ;
 scalar_t__ OE_Abort ;
 scalar_t__ OE_Fail ;
 int SAVEPOINT_RELEASE ;
 int SAVEPOINT_ROLLBACK ;
 int SQLITE_ABORT_ROLLBACK ;
 int SQLITE_BUSY ;
 int SQLITE_CONSTRAINT ;
 int SQLITE_CONSTRAINT_FOREIGNKEY ;
 scalar_t__ SQLITE_DeferFKs ;
 int SQLITE_ERROR ;
 int SQLITE_FULL ;
 int SQLITE_INTERRUPT ;
 int SQLITE_IOERR ;
 int SQLITE_NOMEM ;
 void* SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 scalar_t__ VDBE_MAGIC_HALT ;
 scalar_t__ VDBE_MAGIC_RUN ;
 int assert (int) ;
 int checkActiveVdbeCnt (TYPE_1__*) ;
 int closeAllCursors (TYPE_2__*) ;
 int sqlite3CloseSavepoints (TYPE_1__*) ;
 int sqlite3CommitInternalChanges (TYPE_1__*) ;
 int sqlite3ConnectionUnlocked (TYPE_1__*) ;
 int sqlite3DbFree (TYPE_1__*,int ) ;
 int sqlite3RollbackAll (TYPE_1__*,int) ;
 int sqlite3VdbeCheckFk (TYPE_2__*,int) ;
 int sqlite3VdbeCloseStatement (TYPE_2__*,int) ;
 int sqlite3VdbeEnter (TYPE_2__*) ;
 int sqlite3VdbeLeave (TYPE_2__*) ;
 int sqlite3VdbeSetChanges (TYPE_1__*,scalar_t__) ;
 int sqlite3VtabInSync (TYPE_1__*) ;
 int vdbeCommit (TYPE_1__*,TYPE_2__*) ;

int sqlite3VdbeHalt(Vdbe *p){
  int rc;
  sqlite3 *db = p->db;
  if( p->magic!=VDBE_MAGIC_RUN ){
    return SQLITE_OK;
  }
  if( db->mallocFailed ){
    p->rc = SQLITE_NOMEM_BKPT;
  }
  closeAllCursors(p);
  checkActiveVdbeCnt(db);



  if( p->pc>=0 && p->bIsReader ){
    int mrc;
    int eStatementOp = 0;
    int isSpecialError;


    sqlite3VdbeEnter(p);


    mrc = p->rc & 0xff;
    isSpecialError = mrc==SQLITE_NOMEM || mrc==SQLITE_IOERR
                     || mrc==SQLITE_INTERRUPT || mrc==SQLITE_FULL;
    if( isSpecialError ){
      if( !p->readOnly || mrc!=SQLITE_INTERRUPT ){
        if( (mrc==SQLITE_NOMEM || mrc==SQLITE_FULL) && p->usesStmtJournal ){
          eStatementOp = SAVEPOINT_ROLLBACK;
        }else{



          sqlite3RollbackAll(db, SQLITE_ABORT_ROLLBACK);
          sqlite3CloseSavepoints(db);
          db->autoCommit = 1;
          p->nChange = 0;
        }
      }
    }


    if( p->rc==SQLITE_OK ){
      sqlite3VdbeCheckFk(p, 0);
    }







    if( !sqlite3VtabInSync(db)
     && db->autoCommit
     && db->nVdbeWrite==(p->readOnly==0)
    ){
      if( p->rc==SQLITE_OK || (p->errorAction==OE_Fail && !isSpecialError) ){
        rc = sqlite3VdbeCheckFk(p, 1);
        if( rc!=SQLITE_OK ){
          if( NEVER(p->readOnly) ){
            sqlite3VdbeLeave(p);
            return SQLITE_ERROR;
          }
          rc = SQLITE_CONSTRAINT_FOREIGNKEY;
        }else{




          rc = vdbeCommit(db, p);
        }
        if( rc==SQLITE_BUSY && p->readOnly ){
          sqlite3VdbeLeave(p);
          return SQLITE_BUSY;
        }else if( rc!=SQLITE_OK ){
          p->rc = rc;
          sqlite3RollbackAll(db, SQLITE_OK);
          p->nChange = 0;
        }else{
          db->nDeferredCons = 0;
          db->nDeferredImmCons = 0;
          db->flags &= ~(u64)SQLITE_DeferFKs;
          sqlite3CommitInternalChanges(db);
        }
      }else{
        sqlite3RollbackAll(db, SQLITE_OK);
        p->nChange = 0;
      }
      db->nStatement = 0;
    }else if( eStatementOp==0 ){
      if( p->rc==SQLITE_OK || p->errorAction==OE_Fail ){
        eStatementOp = SAVEPOINT_RELEASE;
      }else if( p->errorAction==OE_Abort ){
        eStatementOp = SAVEPOINT_ROLLBACK;
      }else{
        sqlite3RollbackAll(db, SQLITE_ABORT_ROLLBACK);
        sqlite3CloseSavepoints(db);
        db->autoCommit = 1;
        p->nChange = 0;
      }
    }







    if( eStatementOp ){
      rc = sqlite3VdbeCloseStatement(p, eStatementOp);
      if( rc ){
        if( p->rc==SQLITE_OK || (p->rc&0xff)==SQLITE_CONSTRAINT ){
          p->rc = rc;
          sqlite3DbFree(db, p->zErrMsg);
          p->zErrMsg = 0;
        }
        sqlite3RollbackAll(db, SQLITE_ABORT_ROLLBACK);
        sqlite3CloseSavepoints(db);
        db->autoCommit = 1;
        p->nChange = 0;
      }
    }




    if( p->changeCntOn ){
      if( eStatementOp!=SAVEPOINT_ROLLBACK ){
        sqlite3VdbeSetChanges(db, p->nChange);
      }else{
        sqlite3VdbeSetChanges(db, 0);
      }
      p->nChange = 0;
    }


    sqlite3VdbeLeave(p);
  }


  if( p->pc>=0 ){
    db->nVdbeActive--;
    if( !p->readOnly ) db->nVdbeWrite--;
    if( p->bIsReader ) db->nVdbeRead--;
    assert( db->nVdbeActive>=db->nVdbeRead );
    assert( db->nVdbeRead>=db->nVdbeWrite );
    assert( db->nVdbeWrite>=0 );
  }
  p->magic = VDBE_MAGIC_HALT;
  checkActiveVdbeCnt(db);
  if( db->mallocFailed ){
    p->rc = SQLITE_NOMEM_BKPT;
  }





  if( db->autoCommit ){
    sqlite3ConnectionUnlocked(db);
  }

  assert( db->nVdbeActive>0 || db->autoCommit==0 || db->nStatement==0 );
  return (p->rc==SQLITE_BUSY ? SQLITE_BUSY : SQLITE_OK);
}
