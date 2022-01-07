
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eState; int fd; int pWal; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_OPEN ;
 scalar_t__ PAGER_READER ;
 int SQLITE_OK ;
 scalar_t__ USEFETCH (TYPE_1__*) ;
 int assert (int) ;
 int pagerUseWal (TYPE_1__*) ;
 int pager_reset (TYPE_1__*) ;
 int sqlite3OsUnfetch (int ,int ,int ) ;
 int sqlite3WalBeginReadTransaction (int ,int*) ;
 int sqlite3WalEndReadTransaction (int ) ;

__attribute__((used)) static int pagerBeginReadTransaction(Pager *pPager){
  int rc;
  int changed = 0;

  assert( pagerUseWal(pPager) );
  assert( pPager->eState==PAGER_OPEN || pPager->eState==PAGER_READER );






  sqlite3WalEndReadTransaction(pPager->pWal);

  rc = sqlite3WalBeginReadTransaction(pPager->pWal, &changed);
  if( rc!=SQLITE_OK || changed ){
    pager_reset(pPager);
    if( USEFETCH(pPager) ) sqlite3OsUnfetch(pPager->fd, 0, 0);
  }

  return rc;
}
