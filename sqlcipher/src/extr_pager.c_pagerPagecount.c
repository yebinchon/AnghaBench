
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {scalar_t__ eState; scalar_t__ eLock; scalar_t__ tempFile; int pageSize; scalar_t__ mxPgno; int fd; int pWal; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ Pager ;


 scalar_t__ ALWAYS (int) ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ SHARED_LOCK ;
 int SQLITE_OK ;
 int assert (int) ;
 int isOpen (int ) ;
 int sqlite3OsFileSize (int ,int*) ;
 scalar_t__ sqlite3WalDbsize (int ) ;

__attribute__((used)) static int pagerPagecount(Pager *pPager, Pgno *pnPage){
  Pgno nPage;







  assert( pPager->eState==PAGER_OPEN );
  assert( pPager->eLock>=SHARED_LOCK );
  assert( isOpen(pPager->fd) );
  assert( pPager->tempFile==0 );
  nPage = sqlite3WalDbsize(pPager->pWal);






  if( nPage==0 && ALWAYS(isOpen(pPager->fd)) ){
    i64 n = 0;
    int rc = sqlite3OsFileSize(pPager->fd, &n);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    nPage = (Pgno)((n+pPager->pageSize-1) / pPager->pageSize);
  }





  if( nPage>pPager->mxPgno ){
    pPager->mxPgno = (Pgno)nPage;
  }

  *pnPage = nPage;
  return SQLITE_OK;
}
