#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int errCode; scalar_t__ eState; scalar_t__ journalMode; scalar_t__ journalOff; int /*<<< orphan*/  setMaster; int /*<<< orphan*/  iDataVersion; scalar_t__ exclusiveMode; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ PAGER_JOURNALMODE_PERSIST ; 
 scalar_t__ PAGER_READER ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 scalar_t__ PAGER_WRITER_FINISHED ; 
 scalar_t__ PAGER_WRITER_LOCKED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_1__*,int) ; 

int FUNC9(Pager *pPager){
  int rc = SQLITE_OK;                  /* Return code */

  /* This routine should not be called if a prior error has occurred.
  ** But if (due to a coding error elsewhere in the system) it does get
  ** called, just return the same error code without doing anything. */
  if( FUNC1(pPager->errCode) ) return pPager->errCode;

  FUNC4( pPager->eState==PAGER_WRITER_LOCKED
       || pPager->eState==PAGER_WRITER_FINISHED
       || (FUNC6(pPager) && pPager->eState==PAGER_WRITER_CACHEMOD)
  );
  FUNC4( FUNC5(pPager) );

  /* An optimization. If the database was not actually modified during
  ** this transaction, the pager is running in exclusive-mode and is
  ** using persistent journals, then this function is a no-op.
  **
  ** The start of the journal file currently contains a single journal 
  ** header with the nRec field set to 0. If such a journal is used as
  ** a hot-journal during hot-journal rollback, 0 changes will be made
  ** to the database file. So there is no need to zero the journal 
  ** header. Since the pager is in exclusive mode, there is no need
  ** to drop any locks either.
  */
  if( pPager->eState==PAGER_WRITER_LOCKED 
   && pPager->exclusiveMode 
   && pPager->journalMode==PAGER_JOURNALMODE_PERSIST
  ){
    FUNC4( pPager->journalOff==FUNC0(pPager) || !pPager->journalOff );
    pPager->eState = PAGER_READER;
    return SQLITE_OK;
  }

  FUNC3(("COMMIT %d\n", FUNC2(pPager)));
  pPager->iDataVersion++;
  rc = FUNC7(pPager, pPager->setMaster, 1);
  return FUNC8(pPager, rc);
}