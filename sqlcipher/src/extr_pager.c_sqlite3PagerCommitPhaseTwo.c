
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int errCode; scalar_t__ eState; scalar_t__ journalMode; scalar_t__ journalOff; int setMaster; int iDataVersion; scalar_t__ exclusiveMode; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ JOURNAL_HDR_SZ (TYPE_1__*) ;
 scalar_t__ NEVER (int) ;
 int PAGERID (TYPE_1__*) ;
 int PAGERTRACE (char*) ;
 scalar_t__ PAGER_JOURNALMODE_PERSIST ;
 scalar_t__ PAGER_READER ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 scalar_t__ PAGER_WRITER_FINISHED ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 scalar_t__ pagerUseWal (TYPE_1__*) ;
 int pager_end_transaction (TYPE_1__*,int ,int) ;
 int pager_error (TYPE_1__*,int) ;

int sqlite3PagerCommitPhaseTwo(Pager *pPager){
  int rc = SQLITE_OK;




  if( NEVER(pPager->errCode) ) return pPager->errCode;

  assert( pPager->eState==PAGER_WRITER_LOCKED
       || pPager->eState==PAGER_WRITER_FINISHED
       || (pagerUseWal(pPager) && pPager->eState==PAGER_WRITER_CACHEMOD)
  );
  assert( assert_pager_state(pPager) );
  if( pPager->eState==PAGER_WRITER_LOCKED
   && pPager->exclusiveMode
   && pPager->journalMode==PAGER_JOURNALMODE_PERSIST
  ){
    assert( pPager->journalOff==JOURNAL_HDR_SZ(pPager) || !pPager->journalOff );
    pPager->eState = PAGER_READER;
    return SQLITE_OK;
  }

  PAGERTRACE(("COMMIT %d\n", PAGERID(pPager)));
  pPager->iDataVersion++;
  rc = pager_end_transaction(pPager, pPager->setMaster, 1);
  return pager_error(pPager, rc);
}
