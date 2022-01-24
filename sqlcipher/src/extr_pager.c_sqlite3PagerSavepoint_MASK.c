#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int errCode; int nSavepoint; scalar_t__ journalMode; scalar_t__ eState; TYPE_1__* aSavepoint; int /*<<< orphan*/  jfd; scalar_t__ nSubRec; int /*<<< orphan*/  sjfd; } ;
struct TYPE_8__ {int /*<<< orphan*/  pInSavepoint; } ;
typedef  TYPE_1__ PagerSavepoint ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_ERROR ; 
 scalar_t__ PAGER_JOURNALMODE_OFF ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 int SAVEPOINT_RELEASE ; 
 int SAVEPOINT_ROLLBACK ; 
 int SQLITE_ABORT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(Pager *pPager, int op, int iSavepoint){
  int rc = pPager->errCode;
  
#ifdef SQLITE_ENABLE_ZIPVFS
  if( op==SAVEPOINT_RELEASE ) rc = SQLITE_OK;
#endif

  FUNC0( op==SAVEPOINT_RELEASE || op==SAVEPOINT_ROLLBACK );
  FUNC0( iSavepoint>=0 || op==SAVEPOINT_ROLLBACK );

  if( rc==SQLITE_OK && iSavepoint<pPager->nSavepoint ){
    int ii;            /* Iterator variable */
    int nNew;          /* Number of remaining savepoints after this op. */

    /* Figure out how many savepoints will still be active after this
    ** operation. Store this value in nNew. Then free resources associated 
    ** with any savepoints that are destroyed by this operation.
    */
    nNew = iSavepoint + (( op==SAVEPOINT_RELEASE ) ? 0 : 1);
    for(ii=nNew; ii<pPager->nSavepoint; ii++){
      FUNC5(pPager->aSavepoint[ii].pInSavepoint);
    }
    pPager->nSavepoint = nNew;

    /* If this is a release of the outermost savepoint, truncate 
    ** the sub-journal to zero bytes in size. */
    if( op==SAVEPOINT_RELEASE ){
      if( nNew==0 && FUNC1(pPager->sjfd) ){
        /* Only truncate if it is an in-memory sub-journal. */
        if( FUNC6(pPager->sjfd) ){
          rc = FUNC7(pPager->sjfd, 0);
          FUNC0( rc==SQLITE_OK );
        }
        pPager->nSubRec = 0;
      }
    }
    /* Else this is a rollback operation, playback the specified savepoint.
    ** If this is a temp-file, it is possible that the journal file has
    ** not yet been opened. In this case there have been no changes to
    ** the database file, so the playback operation can be skipped.
    */
    else if( FUNC3(pPager) || FUNC1(pPager->jfd) ){
      PagerSavepoint *pSavepoint = (nNew==0)?0:&pPager->aSavepoint[nNew-1];
      rc = FUNC2(pPager, pSavepoint);
      FUNC0(rc!=SQLITE_DONE);
    }
    
#ifdef SQLITE_ENABLE_ZIPVFS
    /* If the cache has been modified but the savepoint cannot be rolled 
    ** back journal_mode=off, put the pager in the error state. This way,
    ** if the VFS used by this pager includes ZipVFS, the entire transaction
    ** can be rolled back at the ZipVFS level.  */
    else if( 
        pPager->journalMode==PAGER_JOURNALMODE_OFF 
     && pPager->eState>=PAGER_WRITER_CACHEMOD
    ){
      pPager->errCode = SQLITE_ABORT;
      pPager->eState = PAGER_ERROR;
      setGetterMethod(pPager);
    }
#endif
  }

  return rc;
}