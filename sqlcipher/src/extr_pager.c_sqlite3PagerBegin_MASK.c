#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_8__ {int errCode; scalar_t__ eState; scalar_t__ pInJournal; scalar_t__ journalOff; int /*<<< orphan*/  dbSize; int /*<<< orphan*/  dbOrigSize; int /*<<< orphan*/  dbFileSize; int /*<<< orphan*/  dbHintSize; int /*<<< orphan*/  pWal; scalar_t__ exclusiveMode; scalar_t__ subjInMemory; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  EXCLUSIVE_LOCK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ PAGER_ERROR ; 
 scalar_t__ PAGER_READER ; 
 scalar_t__ PAGER_WRITER_LOCKED ; 
 int /*<<< orphan*/  RESERVED_LOCK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 

int FUNC10(Pager *pPager, int exFlag, int subjInMemory){
  int rc = SQLITE_OK;

  if( pPager->errCode ) return pPager->errCode;
  FUNC3( pPager->eState>=PAGER_READER && pPager->eState<PAGER_ERROR );
  pPager->subjInMemory = (u8)subjInMemory;

  if( FUNC0(pPager->eState==PAGER_READER) ){
    FUNC3( pPager->pInJournal==0 );

    if( FUNC6(pPager) ){
      /* If the pager is configured to use locking_mode=exclusive, and an
      ** exclusive lock on the database is not already held, obtain it now.
      */
      if( pPager->exclusiveMode && FUNC9(pPager->pWal, -1) ){
        rc = FUNC5(pPager, EXCLUSIVE_LOCK);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        (void)FUNC9(pPager->pWal, 1);
      }

      /* Grab the write lock on the log file. If successful, upgrade to
      ** PAGER_RESERVED state. Otherwise, return an error code to the caller.
      ** The busy-handler is not invoked if another connection already
      ** holds the write-lock. If possible, the upper layer will call it.
      */
      rc = FUNC8(pPager->pWal);
    }else{
      /* Obtain a RESERVED lock on the database file. If the exFlag parameter
      ** is true, then immediately upgrade this to an EXCLUSIVE lock. The
      ** busy-handler callback can be used when upgrading to the EXCLUSIVE
      ** lock, but not when obtaining the RESERVED lock.
      */
      rc = FUNC5(pPager, RESERVED_LOCK);
      if( rc==SQLITE_OK && exFlag ){
        rc = FUNC7(pPager, EXCLUSIVE_LOCK);
      }
    }

    if( rc==SQLITE_OK ){
      /* Change to WRITER_LOCKED state.
      **
      ** WAL mode sets Pager.eState to PAGER_WRITER_LOCKED or CACHEMOD
      ** when it has an open transaction, but never to DBMOD or FINISHED.
      ** This is because in those states the code to roll back savepoint 
      ** transactions may copy data from the sub-journal into the database 
      ** file as well as into the page cache. Which would be incorrect in 
      ** WAL mode.
      */
      pPager->eState = PAGER_WRITER_LOCKED;
      pPager->dbHintSize = pPager->dbSize;
      pPager->dbFileSize = pPager->dbSize;
      pPager->dbOrigSize = pPager->dbSize;
      pPager->journalOff = 0;
    }

    FUNC3( rc==SQLITE_OK || pPager->eState==PAGER_READER );
    FUNC3( rc!=SQLITE_OK || pPager->eState==PAGER_WRITER_LOCKED );
    FUNC3( FUNC4(pPager) );
  }

  FUNC2(("TRANSACTION %d\n", FUNC1(pPager)));
  return rc;
}