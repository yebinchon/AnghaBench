
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int eState; int errCode; int jfd; int setMaster; } ;
typedef TYPE_1__ Pager ;


 int MEMDB ;
 int PAGERID (TYPE_1__*) ;
 int PAGERTRACE (char*) ;
 int PAGER_ERROR ;
 int PAGER_READER ;
 int PAGER_WRITER_LOCKED ;
 int SAVEPOINT_ROLLBACK ;
 int SQLITE_ABORT ;
 int SQLITE_CANTOPEN ;
 int SQLITE_CORRUPT ;
 int SQLITE_FULL ;
 int SQLITE_IOERR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 int isOpen (int ) ;
 scalar_t__ pagerUseWal (TYPE_1__*) ;
 int pager_end_transaction (TYPE_1__*,int ,int ) ;
 int pager_error (TYPE_1__*,int) ;
 int pager_playback (TYPE_1__*,int ) ;
 int setGetterMethod (TYPE_1__*) ;
 int sqlite3PagerSavepoint (TYPE_1__*,int ,int) ;

int sqlite3PagerRollback(Pager *pPager){
  int rc = SQLITE_OK;
  PAGERTRACE(("ROLLBACK %d\n", PAGERID(pPager)));





  assert( assert_pager_state(pPager) );
  if( pPager->eState==PAGER_ERROR ) return pPager->errCode;
  if( pPager->eState<=PAGER_READER ) return SQLITE_OK;

  if( pagerUseWal(pPager) ){
    int rc2;
    rc = sqlite3PagerSavepoint(pPager, SAVEPOINT_ROLLBACK, -1);
    rc2 = pager_end_transaction(pPager, pPager->setMaster, 0);
    if( rc==SQLITE_OK ) rc = rc2;
  }else if( !isOpen(pPager->jfd) || pPager->eState==PAGER_WRITER_LOCKED ){
    int eState = pPager->eState;
    rc = pager_end_transaction(pPager, 0, 0);
    if( !MEMDB && eState>PAGER_WRITER_LOCKED ){




      pPager->errCode = SQLITE_ABORT;
      pPager->eState = PAGER_ERROR;
      setGetterMethod(pPager);
      return rc;
    }
  }else{
    rc = pager_playback(pPager, 0);
  }

  assert( pPager->eState==PAGER_READER || rc!=SQLITE_OK );
  assert( rc==SQLITE_OK || rc==SQLITE_FULL || rc==SQLITE_CORRUPT
          || rc==SQLITE_NOMEM || (rc&0xFF)==SQLITE_IOERR
          || rc==SQLITE_CANTOPEN
  );




  return pager_error(pPager, rc);
}
