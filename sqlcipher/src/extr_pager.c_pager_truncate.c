
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {scalar_t__ eState; int pageSize; scalar_t__ eLock; char* pTmpSpace; scalar_t__ dbFileSize; int fd; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ Pager ;


 scalar_t__ EXCLUSIVE_LOCK ;
 scalar_t__ PAGER_ERROR ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ PAGER_READER ;
 scalar_t__ PAGER_WRITER_DBMOD ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ isOpen (int ) ;
 int memset (char*,int ,int) ;
 int sqlite3OsFileSize (int ,int*) ;
 int sqlite3OsTruncate (int ,int) ;
 int sqlite3OsWrite (int ,char*,int,int) ;
 int testcase (int) ;

__attribute__((used)) static int pager_truncate(Pager *pPager, Pgno nPage){
  int rc = SQLITE_OK;
  assert( pPager->eState!=PAGER_ERROR );
  assert( pPager->eState!=PAGER_READER );

  if( isOpen(pPager->fd)
   && (pPager->eState>=PAGER_WRITER_DBMOD || pPager->eState==PAGER_OPEN)
  ){
    i64 currentSize, newSize;
    int szPage = pPager->pageSize;
    assert( pPager->eLock==EXCLUSIVE_LOCK );

    rc = sqlite3OsFileSize(pPager->fd, &currentSize);
    newSize = szPage*(i64)nPage;
    if( rc==SQLITE_OK && currentSize!=newSize ){
      if( currentSize>newSize ){
        rc = sqlite3OsTruncate(pPager->fd, newSize);
      }else if( (currentSize+szPage)<=newSize ){
        char *pTmp = pPager->pTmpSpace;
        memset(pTmp, 0, szPage);
        testcase( (newSize-szPage) == currentSize );
        testcase( (newSize-szPage) > currentSize );
        rc = sqlite3OsWrite(pPager->fd, pTmp, szPage, newSize-szPage);
      }
      if( rc==SQLITE_OK ){
        pPager->dbFileSize = nPage;
      }
    }
  }
  return rc;
}
