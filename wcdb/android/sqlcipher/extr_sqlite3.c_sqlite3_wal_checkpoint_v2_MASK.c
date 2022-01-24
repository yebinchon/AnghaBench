#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ isInterrupted; } ;
struct TYPE_11__ {scalar_t__ nBusy; } ;
struct TYPE_13__ {scalar_t__ nVdbeActive; int /*<<< orphan*/  mutex; TYPE_2__ u1; TYPE_1__ busyHandler; } ;
typedef  TYPE_3__ sqlite3 ;

/* Variables and functions */
 int SQLITE_CHECKPOINT_FULL ; 
 int SQLITE_CHECKPOINT_PASSIVE ; 
 int SQLITE_CHECKPOINT_RESTART ; 
 int SQLITE_CHECKPOINT_TRUNCATE ; 
 int SQLITE_ERROR ; 
 int SQLITE_MAX_ATTACHED ; 
 int SQLITE_MISUSE ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,char*,char const*) ; 
 int FUNC5 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(
  sqlite3 *db,                    /* Database handle */
  const char *zDb,                /* Name of attached database (or NULL) */
  int eMode,                      /* SQLITE_CHECKPOINT_* value */
  int *pnLog,                     /* OUT: Size of WAL log in frames */
  int *pnCkpt                     /* OUT: Total number of frames checkpointed */
){
#ifdef SQLITE_OMIT_WAL
  return SQLITE_OK;
#else
  int rc;                         /* Return code */
  int iDb = SQLITE_MAX_ATTACHED;  /* sqlite3.aDb[] index of db to checkpoint */

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) ) return SQLITE_MISUSE_BKPT;
#endif

  /* Initialize the output variables to -1 in case an error occurs. */
  if( pnLog ) *pnLog = -1;
  if( pnCkpt ) *pnCkpt = -1;

  FUNC0( SQLITE_CHECKPOINT_PASSIVE==0 );
  FUNC0( SQLITE_CHECKPOINT_FULL==1 );
  FUNC0( SQLITE_CHECKPOINT_RESTART==2 );
  FUNC0( SQLITE_CHECKPOINT_TRUNCATE==3 );
  if( eMode<SQLITE_CHECKPOINT_PASSIVE || eMode>SQLITE_CHECKPOINT_TRUNCATE ){
    /* EVIDENCE-OF: R-03996-12088 The M parameter must be a valid checkpoint
    ** mode: */
    return SQLITE_MISUSE;
  }

  FUNC7(db->mutex);
  if( zDb && zDb[0] ){
    iDb = FUNC5(db, zDb);
  }
  if( iDb<0 ){
    rc = SQLITE_ERROR;
    FUNC4(db, SQLITE_ERROR, "unknown database: %s", zDb);
  }else{
    db->busyHandler.nBusy = 0;
    rc = FUNC2(db, iDb, eMode, pnLog, pnCkpt);
    FUNC3(db, rc);
  }
  rc = FUNC1(db, rc);

  /* If there are no active statements, clear the interrupt flag at this
  ** point.  */
  if( db->nVdbeActive==0 ){
    db->u1.isInterrupted = 0;
  }

  FUNC8(db->mutex);
  return rc;
#endif
}