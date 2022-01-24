#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_7__ {int journalMode; scalar_t__ tempFile; int eState; scalar_t__ eLock; int /*<<< orphan*/  jfd; int /*<<< orphan*/  zJournal; int /*<<< orphan*/  pVfs; scalar_t__ exclusiveMode; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ MEMDB ; 
 int PAGER_ERROR ; 
 int PAGER_JOURNALMODE_DELETE ; 
 int PAGER_JOURNALMODE_MEMORY ; 
 int PAGER_JOURNALMODE_OFF ; 
 int PAGER_JOURNALMODE_PERSIST ; 
 int PAGER_JOURNALMODE_TRUNCATE ; 
 int PAGER_JOURNALMODE_WAL ; 
 int PAGER_OPEN ; 
 int PAGER_READER ; 
 scalar_t__ RESERVED_LOCK ; 
 int /*<<< orphan*/  SHARED_LOCK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 

int FUNC8(Pager *pPager, int eMode){
  u8 eOld = pPager->journalMode;    /* Prior journalmode */

  /* The eMode parameter is always valid */
  FUNC0(      eMode==PAGER_JOURNALMODE_DELETE
            || eMode==PAGER_JOURNALMODE_TRUNCATE
            || eMode==PAGER_JOURNALMODE_PERSIST
            || eMode==PAGER_JOURNALMODE_OFF 
            || eMode==PAGER_JOURNALMODE_WAL 
            || eMode==PAGER_JOURNALMODE_MEMORY );

  /* This routine is only called from the OP_JournalMode opcode, and
  ** the logic there will never allow a temporary file to be changed
  ** to WAL mode.
  */
  FUNC0( pPager->tempFile==0 || eMode!=PAGER_JOURNALMODE_WAL );

  /* Do allow the journalmode of an in-memory database to be set to
  ** anything other than MEMORY or OFF
  */
  if( MEMDB ){
    FUNC0( eOld==PAGER_JOURNALMODE_MEMORY || eOld==PAGER_JOURNALMODE_OFF );
    if( eMode!=PAGER_JOURNALMODE_MEMORY && eMode!=PAGER_JOURNALMODE_OFF ){
      eMode = eOld;
    }
  }

  if( eMode!=eOld ){

    /* Change the journal mode. */
    FUNC0( pPager->eState!=PAGER_ERROR );
    pPager->journalMode = (u8)eMode;

    /* When transistioning from TRUNCATE or PERSIST to any other journal
    ** mode except WAL, unless the pager is in locking_mode=exclusive mode,
    ** delete the journal file.
    */
    FUNC0( (PAGER_JOURNALMODE_TRUNCATE & 5)==1 );
    FUNC0( (PAGER_JOURNALMODE_PERSIST & 5)==1 );
    FUNC0( (PAGER_JOURNALMODE_DELETE & 5)==0 );
    FUNC0( (PAGER_JOURNALMODE_MEMORY & 5)==4 );
    FUNC0( (PAGER_JOURNALMODE_OFF & 5)==0 );
    FUNC0( (PAGER_JOURNALMODE_WAL & 5)==5 );

    FUNC0( FUNC1(pPager->fd) || pPager->exclusiveMode );
    if( !pPager->exclusiveMode && (eOld & 5)==1 && (eMode & 1)==0 ){

      /* In this case we would like to delete the journal file. If it is
      ** not possible, then that is not a problem. Deleting the journal file
      ** here is an optimization only.
      **
      ** Before deleting the journal file, obtain a RESERVED lock on the
      ** database file. This ensures that the journal file is not deleted
      ** while it is in use by some other client.
      */
      FUNC5(pPager->jfd);
      if( pPager->eLock>=RESERVED_LOCK ){
        FUNC6(pPager->pVfs, pPager->zJournal, 0);
      }else{
        int rc = SQLITE_OK;
        int state = pPager->eState;
        FUNC0( state==PAGER_OPEN || state==PAGER_READER );
        if( state==PAGER_OPEN ){
          rc = FUNC7(pPager);
        }
        if( pPager->eState==PAGER_READER ){
          FUNC0( rc==SQLITE_OK );
          rc = FUNC2(pPager, RESERVED_LOCK);
        }
        if( rc==SQLITE_OK ){
          FUNC6(pPager->pVfs, pPager->zJournal, 0);
        }
        if( rc==SQLITE_OK && state==PAGER_READER ){
          FUNC3(pPager, SHARED_LOCK);
        }else if( state==PAGER_OPEN ){
          FUNC4(pPager);
        }
        FUNC0( state==pPager->eState );
      }
    }else if( eMode==PAGER_JOURNALMODE_OFF ){
      FUNC5(pPager->jfd);
    }
  }

  /* Return the new journal mode */
  return (int)pPager->journalMode;
}