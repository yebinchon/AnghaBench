#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ eState; int changeCountDone; scalar_t__ dbSize; scalar_t__ dbFileSize; int /*<<< orphan*/  dbFileVers; int /*<<< orphan*/ * aStat; int /*<<< orphan*/  pageSize; int /*<<< orphan*/  fd; int /*<<< orphan*/  tempFile; } ;
struct TYPE_11__ {int /*<<< orphan*/  pData; } ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int,void const*) ; 
 scalar_t__ DIRECT_MODE ; 
 size_t PAGER_STAT_WRITE ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 scalar_t__ PAGER_WRITER_DBMOD ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(Pager *pPager, int isDirectMode){
  int rc = SQLITE_OK;

  FUNC3( pPager->eState==PAGER_WRITER_CACHEMOD
       || pPager->eState==PAGER_WRITER_DBMOD
  );
  FUNC3( FUNC4(pPager) );

  /* Declare and initialize constant integer 'isDirect'. If the
  ** atomic-write optimization is enabled in this build, then isDirect
  ** is initialized to the value passed as the isDirectMode parameter
  ** to this function. Otherwise, it is always set to zero.
  **
  ** The idea is that if the atomic-write optimization is not
  ** enabled at compile time, the compiler can omit the tests of
  ** 'isDirect' below, as well as the block enclosed in the
  ** "if( isDirect )" condition.
  */
#ifndef SQLITE_ENABLE_ATOMIC_WRITE
# define DIRECT_MODE 0
  FUNC3( isDirectMode==0 );
  FUNC2(isDirectMode);
#else
# define DIRECT_MODE isDirectMode
#endif

  if( !pPager->changeCountDone && FUNC0(pPager->dbSize>0) ){
    PgHdr *pPgHdr;                /* Reference to page 1 */

    FUNC3( !pPager->tempFile && FUNC5(pPager->fd) );

    /* Open page 1 of the file for writing. */
    rc = FUNC9(pPager, 1, &pPgHdr, 0);
    FUNC3( pPgHdr==0 || rc==SQLITE_OK );

    /* If page one was fetched successfully, and this function is not
    ** operating in direct-mode, make page 1 writable.  When not in 
    ** direct mode, page 1 is always held in cache and hence the PagerGet()
    ** above is always successful - hence the ALWAYS on rc==SQLITE_OK.
    */
    if( !DIRECT_MODE && FUNC0(rc==SQLITE_OK) ){
      rc = FUNC11(pPgHdr);
    }

    if( rc==SQLITE_OK ){
      /* Actually do the update of the change counter */
      FUNC7(pPgHdr);

      /* If running in direct mode, write the contents of page 1 to the file. */
      if( DIRECT_MODE ){
        const void *zBuf;
        FUNC3( pPager->dbFileSize>0 );
        FUNC1(pPager, pPgHdr->pData, 1, 6, rc=SQLITE_NOMEM_BKPT, zBuf);
        if( rc==SQLITE_OK ){
          rc = FUNC8(pPager->fd, zBuf, pPager->pageSize, 0);
          pPager->aStat[PAGER_STAT_WRITE]++;
        }
        if( rc==SQLITE_OK ){
          /* Update the pager's copy of the change-counter. Otherwise, the
          ** next time a read transaction is opened the cache will be
          ** flushed (as the change-counter values will not match).  */
          const void *pCopy = (const void *)&((const char *)zBuf)[24];
          FUNC6(&pPager->dbFileVers, pCopy, sizeof(pPager->dbFileVers));
          pPager->changeCountDone = 1;
        }
      }else{
        pPager->changeCountDone = 1;
      }
    }

    /* Release the page reference. */
    FUNC10(pPgHdr);
  }
  return rc;
}