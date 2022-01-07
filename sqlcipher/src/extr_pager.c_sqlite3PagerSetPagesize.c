
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int i64 ;
typedef int i16 ;
struct TYPE_6__ {scalar_t__ memDb; scalar_t__ dbSize; int pageSize; scalar_t__ eState; char* pTmpSpace; int nReserve; int pPCache; int fd; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_OPEN ;
 int SQLITE_MAX_PAGE_SIZE ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ isOpen (int ) ;
 int memset (char*,int ,int) ;
 int pagerFixMaplimit (TYPE_1__*) ;
 int pagerReportSize (TYPE_1__*) ;
 int pager_reset (TYPE_1__*) ;
 int sqlite3OsFileSize (int ,int*) ;
 int sqlite3PageFree (char*) ;
 scalar_t__ sqlite3PageMalloc (int) ;
 scalar_t__ sqlite3PcacheRefCount (int ) ;
 int sqlite3PcacheSetPageSize (int ,int) ;

int sqlite3PagerSetPagesize(Pager *pPager, u32 *pPageSize, int nReserve){
  int rc = SQLITE_OK;
  u32 pageSize = *pPageSize;
  assert( pageSize==0 || (pageSize>=512 && pageSize<=SQLITE_MAX_PAGE_SIZE) );
  if( (pPager->memDb==0 || pPager->dbSize==0)
   && sqlite3PcacheRefCount(pPager->pPCache)==0
   && pageSize && pageSize!=(u32)pPager->pageSize
  ){
    char *pNew = ((void*)0);
    i64 nByte = 0;

    if( pPager->eState>PAGER_OPEN && isOpen(pPager->fd) ){
      rc = sqlite3OsFileSize(pPager->fd, &nByte);
    }
    if( rc==SQLITE_OK ){


      pNew = (char *)sqlite3PageMalloc(pageSize+8);
      if( !pNew ){
        rc = SQLITE_NOMEM_BKPT;
      }else{
        memset(pNew+pageSize, 0, 8);
      }
    }

    if( rc==SQLITE_OK ){
      pager_reset(pPager);
      rc = sqlite3PcacheSetPageSize(pPager->pPCache, pageSize);
    }
    if( rc==SQLITE_OK ){
      sqlite3PageFree(pPager->pTmpSpace);
      pPager->pTmpSpace = pNew;
      pPager->dbSize = (Pgno)((nByte+pageSize-1)/pageSize);
      pPager->pageSize = pageSize;
    }else{
      sqlite3PageFree(pNew);
    }
  }

  *pPageSize = pPager->pageSize;
  if( rc==SQLITE_OK ){
    if( nReserve<0 ) nReserve = pPager->nReserve;
    assert( nReserve>=0 && nReserve<1000 );
    pPager->nReserve = (i16)nReserve;
    pagerReportSize(pPager);
    pagerFixMaplimit(pPager);
  }
  return rc;
}
