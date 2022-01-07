
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int i64 ;
struct TYPE_9__ {scalar_t__ eState; int nRead; int dbFileVers; scalar_t__ pageSize; int fd; int pWal; } ;
struct TYPE_8__ {int pgno; scalar_t__ pData; TYPE_2__* pPager; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 int CODEC1 (TYPE_2__*,scalar_t__,int,int,int) ;
 int IOTRACE (char*) ;
 int MEMDB ;
 int PAGERID (TYPE_2__*) ;
 int PAGERTRACE (char*) ;
 int PAGER_INCR (int ) ;
 scalar_t__ PAGER_READER ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int isOpen (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,int,int) ;
 scalar_t__ pagerUseWal (TYPE_2__*) ;
 int pager_pagehash (TYPE_1__*) ;
 int sqlite3OsRead (int ,scalar_t__,scalar_t__,int) ;
 int sqlite3WalFindFrame (int ,int,scalar_t__*) ;
 int sqlite3WalReadFrame (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int sqlite3_pager_readdb_count ;

__attribute__((used)) static int readDbPage(PgHdr *pPg){
  Pager *pPager = pPg->pPager;
  int rc = SQLITE_OK;


  u32 iFrame = 0;

  assert( pPager->eState>=PAGER_READER && !MEMDB );
  assert( isOpen(pPager->fd) );

  if( pagerUseWal(pPager) ){
    rc = sqlite3WalFindFrame(pPager->pWal, pPg->pgno, &iFrame);
    if( rc ) return rc;
  }
  if( iFrame ){
    rc = sqlite3WalReadFrame(pPager->pWal, iFrame,pPager->pageSize,pPg->pData);
  }else

  {
    i64 iOffset = (pPg->pgno-1)*(i64)pPager->pageSize;
    rc = sqlite3OsRead(pPager->fd, pPg->pData, pPager->pageSize, iOffset);
    if( rc==SQLITE_IOERR_SHORT_READ ){
      rc = SQLITE_OK;
    }
  }

  if( pPg->pgno==1 ){
    if( rc ){
      memset(pPager->dbFileVers, 0xff, sizeof(pPager->dbFileVers));
    }else{
      u8 *dbFileVers = &((u8*)pPg->pData)[24];
      memcpy(&pPager->dbFileVers, dbFileVers, sizeof(pPager->dbFileVers));
    }
  }
  CODEC1(pPager, pPg->pData, pPg->pgno, 3, rc = SQLITE_NOMEM_BKPT);

  PAGER_INCR(sqlite3_pager_readdb_count);
  PAGER_INCR(pPager->nRead);
  IOTRACE(("PGIN %p %d\n", pPager, pPg->pgno));
  PAGERTRACE(("FETCH %d page %d hash(%08x)\n",
               PAGERID(pPager), pPg->pgno, pager_pagehash(pPg)));

  return rc;
}
