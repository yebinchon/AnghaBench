#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int eState; int errCode; int /*<<< orphan*/  jfd; int /*<<< orphan*/  setMaster; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  MEMDB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PAGER_ERROR ; 
 int PAGER_READER ; 
 int PAGER_WRITER_LOCKED ; 
 int /*<<< orphan*/  SAVEPOINT_ROLLBACK ; 
 int SQLITE_ABORT ; 
 int SQLITE_CANTOPEN ; 
 int SQLITE_CORRUPT ; 
 int SQLITE_FULL ; 
 int SQLITE_IOERR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC11(Pager *pPager){
  int rc = SQLITE_OK;                  /* Return code */
  FUNC1(("ROLLBACK %d\n", FUNC0(pPager)));

  /* PagerRollback() is a no-op if called in READER or OPEN state. If
  ** the pager is already in the ERROR state, the rollback is not 
  ** attempted here. Instead, the error code is returned to the caller.
  */
  FUNC2( FUNC3(pPager) );
  if( pPager->eState==PAGER_ERROR ) return pPager->errCode;
  if( pPager->eState<=PAGER_READER ) return SQLITE_OK;

  if( FUNC5(pPager) ){
    int rc2;
    rc = FUNC10(pPager, SAVEPOINT_ROLLBACK, -1);
    rc2 = FUNC6(pPager, pPager->setMaster, 0);
    if( rc==SQLITE_OK ) rc = rc2;
  }else if( !FUNC4(pPager->jfd) || pPager->eState==PAGER_WRITER_LOCKED ){
    int eState = pPager->eState;
    rc = FUNC6(pPager, 0, 0);
    if( !MEMDB && eState>PAGER_WRITER_LOCKED ){
      /* This can happen using journal_mode=off. Move the pager to the error 
      ** state to indicate that the contents of the cache may not be trusted.
      ** Any active readers will get SQLITE_ABORT.
      */
      pPager->errCode = SQLITE_ABORT;
      pPager->eState = PAGER_ERROR;
      FUNC9(pPager);
      return rc;
    }
  }else{
    rc = FUNC8(pPager, 0);
  }

  FUNC2( pPager->eState==PAGER_READER || rc!=SQLITE_OK );
  FUNC2( rc==SQLITE_OK || rc==SQLITE_FULL || rc==SQLITE_CORRUPT
          || rc==SQLITE_NOMEM || (rc&0xFF)==SQLITE_IOERR 
          || rc==SQLITE_CANTOPEN
  );

  /* If an error occurs during a ROLLBACK, we can no longer trust the pager
  ** cache. So call pager_error() on the way out to make any error persistent.
  */
  return FUNC7(pPager, rc);
}