#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int doNotSpill; scalar_t__ tempFile; scalar_t__ eState; int /*<<< orphan*/  jfd; int /*<<< orphan*/ * aStat; int /*<<< orphan*/  errCode; } ;
struct TYPE_14__ {int flags; int /*<<< orphan*/  pgno; scalar_t__ pDirty; TYPE_2__* pPager; } ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t PAGER_STAT_SPILL ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 int PGHDR_DIRTY ; 
 int PGHDR_NEED_SYNC ; 
 int SPILLFLAG_NOSYNC ; 
 int SPILLFLAG_OFF ; 
 int SPILLFLAG_ROLLBACK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(void *p, PgHdr *pPg){
  Pager *pPager = (Pager *)p;
  int rc = SQLITE_OK;

  FUNC3( pPg->pPager==pPager );
  FUNC3( pPg->flags&PGHDR_DIRTY );

  /* The doNotSpill NOSYNC bit is set during times when doing a sync of
  ** journal (and adding a new header) is not allowed.  This occurs
  ** during calls to sqlite3PagerWrite() while trying to journal multiple
  ** pages belonging to the same sector.
  **
  ** The doNotSpill ROLLBACK and OFF bits inhibits all cache spilling
  ** regardless of whether or not a sync is required.  This is set during
  ** a rollback or by user request, respectively.
  **
  ** Spilling is also prohibited when in an error state since that could
  ** lead to database corruption.   In the current implementation it 
  ** is impossible for sqlite3PcacheFetch() to be called with createFlag==3
  ** while in the error state, hence it is impossible for this routine to
  ** be called in the error state.  Nevertheless, we include a NEVER()
  ** test for the error state as a safeguard against future changes.
  */
  if( FUNC0(pPager->errCode) ) return SQLITE_OK;
  FUNC12( pPager->doNotSpill & SPILLFLAG_ROLLBACK );
  FUNC12( pPager->doNotSpill & SPILLFLAG_OFF );
  FUNC12( pPager->doNotSpill & SPILLFLAG_NOSYNC );
  if( pPager->doNotSpill
   && ((pPager->doNotSpill & (SPILLFLAG_ROLLBACK|SPILLFLAG_OFF))!=0
      || (pPg->flags & PGHDR_NEED_SYNC)!=0)
  ){
    return SQLITE_OK;
  }

  pPager->aStat[PAGER_STAT_SPILL]++;
  pPg->pDirty = 0;
  if( FUNC4(pPager) ){
    /* Write a single frame for this page to the log. */
    rc = FUNC10(pPg); 
    if( rc==SQLITE_OK ){
      rc = FUNC5(pPager, pPg, 0, 0);
    }
  }else{
    
#ifdef SQLITE_ENABLE_BATCH_ATOMIC_WRITE
    if( pPager->tempFile==0 ){
      rc = sqlite3JournalCreate(pPager->jfd);
      if( rc!=SQLITE_OK ) return pager_error(pPager, rc);
    }
#endif
  
    /* Sync the journal file if required. */
    if( pPg->flags&PGHDR_NEED_SYNC 
     || pPager->eState==PAGER_WRITER_CACHEMOD
    ){
      rc = FUNC11(pPager, 1);
    }
  
    /* Write the contents of the page out to the database file. */
    if( rc==SQLITE_OK ){
      FUNC3( (pPg->flags&PGHDR_NEED_SYNC)==0 );
      rc = FUNC7(pPager, pPg);
    }
  }

  /* Mark the page as clean. */
  if( rc==SQLITE_OK ){
    FUNC2(("STRESS %d page %d\n", FUNC1(pPager), pPg->pgno));
    FUNC9(pPg);
  }

  return FUNC6(pPager, rc); 
}