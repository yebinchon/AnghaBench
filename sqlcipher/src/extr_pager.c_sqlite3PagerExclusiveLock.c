
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int errCode; scalar_t__ eState; } ;
typedef TYPE_1__ Pager ;


 int EXCLUSIVE_LOCK ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 scalar_t__ PAGER_WRITER_DBMOD ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 scalar_t__ pagerUseWal (TYPE_1__*) ;
 int pager_wait_on_lock (TYPE_1__*,int ) ;

int sqlite3PagerExclusiveLock(Pager *pPager){
  int rc = pPager->errCode;
  assert( assert_pager_state(pPager) );
  if( rc==SQLITE_OK ){
    assert( pPager->eState==PAGER_WRITER_CACHEMOD
         || pPager->eState==PAGER_WRITER_DBMOD
         || pPager->eState==PAGER_WRITER_LOCKED
    );
    assert( assert_pager_state(pPager) );
    if( 0==pagerUseWal(pPager) ){
      rc = pager_wait_on_lock(pPager, EXCLUSIVE_LOCK);
    }
  }
  return rc;
}
