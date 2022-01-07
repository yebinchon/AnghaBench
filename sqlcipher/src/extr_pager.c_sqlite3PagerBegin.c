
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {int errCode; scalar_t__ eState; scalar_t__ pInJournal; scalar_t__ journalOff; int dbSize; int dbOrigSize; int dbFileSize; int dbHintSize; int pWal; scalar_t__ exclusiveMode; scalar_t__ subjInMemory; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ ALWAYS (int) ;
 int EXCLUSIVE_LOCK ;
 int PAGERID (TYPE_1__*) ;
 int PAGERTRACE (char*) ;
 scalar_t__ PAGER_ERROR ;
 scalar_t__ PAGER_READER ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 int RESERVED_LOCK ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 int pagerLockDb (TYPE_1__*,int ) ;
 scalar_t__ pagerUseWal (TYPE_1__*) ;
 int pager_wait_on_lock (TYPE_1__*,int ) ;
 int sqlite3WalBeginWriteTransaction (int ) ;
 scalar_t__ sqlite3WalExclusiveMode (int ,int) ;

int sqlite3PagerBegin(Pager *pPager, int exFlag, int subjInMemory){
  int rc = SQLITE_OK;

  if( pPager->errCode ) return pPager->errCode;
  assert( pPager->eState>=PAGER_READER && pPager->eState<PAGER_ERROR );
  pPager->subjInMemory = (u8)subjInMemory;

  if( ALWAYS(pPager->eState==PAGER_READER) ){
    assert( pPager->pInJournal==0 );

    if( pagerUseWal(pPager) ){



      if( pPager->exclusiveMode && sqlite3WalExclusiveMode(pPager->pWal, -1) ){
        rc = pagerLockDb(pPager, EXCLUSIVE_LOCK);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        (void)sqlite3WalExclusiveMode(pPager->pWal, 1);
      }






      rc = sqlite3WalBeginWriteTransaction(pPager->pWal);
    }else{





      rc = pagerLockDb(pPager, RESERVED_LOCK);
      if( rc==SQLITE_OK && exFlag ){
        rc = pager_wait_on_lock(pPager, EXCLUSIVE_LOCK);
      }
    }

    if( rc==SQLITE_OK ){
      pPager->eState = PAGER_WRITER_LOCKED;
      pPager->dbHintSize = pPager->dbSize;
      pPager->dbFileSize = pPager->dbSize;
      pPager->dbOrigSize = pPager->dbSize;
      pPager->journalOff = 0;
    }

    assert( rc==SQLITE_OK || pPager->eState==PAGER_READER );
    assert( rc!=SQLITE_OK || pPager->eState==PAGER_WRITER_LOCKED );
    assert( assert_pager_state(pPager) );
  }

  PAGERTRACE(("TRANSACTION %d\n", PAGERID(pPager)));
  return rc;
}
