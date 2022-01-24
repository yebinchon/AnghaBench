#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_19__ {int autoCommit; int nVdbeWrite; scalar_t__ nStatement; scalar_t__ nVdbeActive; scalar_t__ nVdbeRead; scalar_t__ mallocFailed; int /*<<< orphan*/  flags; scalar_t__ nDeferredImmCons; scalar_t__ nDeferredCons; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_20__ {scalar_t__ magic; int rc; scalar_t__ pc; scalar_t__ readOnly; scalar_t__ errorAction; scalar_t__ bIsReader; scalar_t__ nChange; scalar_t__ changeCntOn; int /*<<< orphan*/  zErrMsg; scalar_t__ usesStmtJournal; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_2__*,int) ; 
 int FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,TYPE_2__*) ; 

int FUNC16(Vdbe *p){
  int rc;                         /* Used to store transient return codes */
  sqlite3 *db = p->db;

  /* This function contains the logic that determines if a statement or
  ** transaction will be committed or rolled back as a result of the
  ** execution of this virtual machine. 
  **
  ** If any of the following errors occur:
  **
  **     SQLITE_NOMEM
  **     SQLITE_IOERR
  **     SQLITE_FULL
  **     SQLITE_INTERRUPT
  **
  ** Then the internal cache might have been left in an inconsistent
  ** state.  We need to rollback the statement transaction, if there is
  ** one, or the complete transaction if there is no statement transaction.
  */

  if( p->magic!=VDBE_MAGIC_RUN ){
    return SQLITE_OK;
  }
  if( db->mallocFailed ){
    p->rc = SQLITE_NOMEM_BKPT;
  }
  FUNC3(p);
  FUNC2(db);

  /* No commit or rollback needed if the program never started or if the
  ** SQL statement does not read or write a database file.  */
  if( p->pc>=0 && p->bIsReader ){
    int mrc;   /* Primary error code from p->rc */
    int eStatementOp = 0;
    int isSpecialError;            /* Set to true if a 'special' error */

    /* Lock all btrees used by the statement */
    FUNC11(p);

    /* Check for one of the special errors */
    mrc = p->rc & 0xff;
    isSpecialError = mrc==SQLITE_NOMEM || mrc==SQLITE_IOERR
                     || mrc==SQLITE_INTERRUPT || mrc==SQLITE_FULL;
    if( isSpecialError ){
      /* If the query was read-only and the error code is SQLITE_INTERRUPT, 
      ** no rollback is necessary. Otherwise, at least a savepoint 
      ** transaction must be rolled back to restore the database to a 
      ** consistent state.
      **
      ** Even if the statement is read-only, it is important to perform
      ** a statement or transaction rollback operation. If the error 
      ** occurred while writing to the journal, sub-journal or database
      ** file as part of an effort to free up cache space (see function
      ** pagerStress() in pager.c), the rollback is required to restore 
      ** the pager to a consistent state.
      */
      if( !p->readOnly || mrc!=SQLITE_INTERRUPT ){
        if( (mrc==SQLITE_NOMEM || mrc==SQLITE_FULL) && p->usesStmtJournal ){
          eStatementOp = SAVEPOINT_ROLLBACK;
        }else{
          /* We are forced to roll back the active transaction. Before doing
          ** so, abort any other statements this handle currently has active.
          */
          FUNC8(db, SQLITE_ABORT_ROLLBACK);
          FUNC4(db);
          db->autoCommit = 1;
          p->nChange = 0;
        }
      }
    }

    /* Check for immediate foreign key violations. */
    if( p->rc==SQLITE_OK ){
      FUNC9(p, 0);
    }
  
    /* If the auto-commit flag is set and this is the only active writer 
    ** VM, then we do either a commit or rollback of the current transaction. 
    **
    ** Note: This block also runs if one of the special errors handled 
    ** above has occurred. 
    */
    if( !FUNC14(db) 
     && db->autoCommit 
     && db->nVdbeWrite==(p->readOnly==0) 
    ){
      if( p->rc==SQLITE_OK || (p->errorAction==OE_Fail && !isSpecialError) ){
        rc = FUNC9(p, 1);
        if( rc!=SQLITE_OK ){
          if( FUNC0(p->readOnly) ){
            FUNC12(p);
            return SQLITE_ERROR;
          }
          rc = SQLITE_CONSTRAINT_FOREIGNKEY;
        }else{ 
          /* The auto-commit flag is true, the vdbe program was successful 
          ** or hit an 'OR FAIL' constraint and there are no deferred foreign
          ** key constraints to hold up the transaction. This means a commit 
          ** is required. */
          rc = FUNC15(db, p);
        }
        if( rc==SQLITE_BUSY && p->readOnly ){
          FUNC12(p);
          return SQLITE_BUSY;
        }else if( rc!=SQLITE_OK ){
          p->rc = rc;
          FUNC8(db, SQLITE_OK);
          p->nChange = 0;
        }else{
          db->nDeferredCons = 0;
          db->nDeferredImmCons = 0;
          db->flags &= ~(u64)SQLITE_DeferFKs;
          FUNC5(db);
        }
      }else{
        FUNC8(db, SQLITE_OK);
        p->nChange = 0;
      }
      db->nStatement = 0;
    }else if( eStatementOp==0 ){
      if( p->rc==SQLITE_OK || p->errorAction==OE_Fail ){
        eStatementOp = SAVEPOINT_RELEASE;
      }else if( p->errorAction==OE_Abort ){
        eStatementOp = SAVEPOINT_ROLLBACK;
      }else{
        FUNC8(db, SQLITE_ABORT_ROLLBACK);
        FUNC4(db);
        db->autoCommit = 1;
        p->nChange = 0;
      }
    }
  
    /* If eStatementOp is non-zero, then a statement transaction needs to
    ** be committed or rolled back. Call sqlite3VdbeCloseStatement() to
    ** do so. If this operation returns an error, and the current statement
    ** error code is SQLITE_OK or SQLITE_CONSTRAINT, then promote the
    ** current statement error code.
    */
    if( eStatementOp ){
      rc = FUNC10(p, eStatementOp);
      if( rc ){
        if( p->rc==SQLITE_OK || (p->rc&0xff)==SQLITE_CONSTRAINT ){
          p->rc = rc;
          FUNC7(db, p->zErrMsg);
          p->zErrMsg = 0;
        }
        FUNC8(db, SQLITE_ABORT_ROLLBACK);
        FUNC4(db);
        db->autoCommit = 1;
        p->nChange = 0;
      }
    }
  
    /* If this was an INSERT, UPDATE or DELETE and no statement transaction
    ** has been rolled back, update the database connection change-counter. 
    */
    if( p->changeCntOn ){
      if( eStatementOp!=SAVEPOINT_ROLLBACK ){
        FUNC13(db, p->nChange);
      }else{
        FUNC13(db, 0);
      }
      p->nChange = 0;
    }

    /* Release the locks */
    FUNC12(p);
  }

  /* We have successfully halted and closed the VM.  Record this fact. */
  if( p->pc>=0 ){
    db->nVdbeActive--;
    if( !p->readOnly ) db->nVdbeWrite--;
    if( p->bIsReader ) db->nVdbeRead--;
    FUNC1( db->nVdbeActive>=db->nVdbeRead );
    FUNC1( db->nVdbeRead>=db->nVdbeWrite );
    FUNC1( db->nVdbeWrite>=0 );
  }
  p->magic = VDBE_MAGIC_HALT;
  FUNC2(db);
  if( db->mallocFailed ){
    p->rc = SQLITE_NOMEM_BKPT;
  }

  /* If the auto-commit flag is set to true, then any locks that were held
  ** by connection db have now been released. Call sqlite3ConnectionUnlocked() 
  ** to invoke any required unlock-notify callbacks.
  */
  if( db->autoCommit ){
    FUNC6(db);
  }

  FUNC1( db->nVdbeActive>0 || db->autoCommit==0 || db->nStatement==0 );
  return (p->rc==SQLITE_BUSY ? SQLITE_BUSY : SQLITE_OK);
}