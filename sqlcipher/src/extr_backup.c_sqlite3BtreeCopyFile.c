
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_20__ {int iNext; int rc; TYPE_4__* pDest; TYPE_4__* pSrc; int pSrcDb; } ;
typedef TYPE_3__ sqlite3_backup ;
typedef int i64 ;
typedef int b ;
struct TYPE_21__ {TYPE_1__* pBt; int db; } ;
struct TYPE_18__ {int btsFlags; } ;
typedef TYPE_4__ Btree ;


 int BTS_PAGESIZE_FIXED ;
 int SQLITE_FCNTL_OVERWRITE ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3BtreeEnter (TYPE_4__*) ;
 int sqlite3BtreeGetPageSize (TYPE_4__*) ;
 scalar_t__ sqlite3BtreeIsInTrans (TYPE_4__*) ;
 scalar_t__ sqlite3BtreeLastPage (TYPE_4__*) ;
 int sqlite3BtreeLeave (TYPE_4__*) ;
 int sqlite3BtreePager (TYPE_4__*) ;
 int sqlite3OsFileControl (TYPE_2__*,int ,int*) ;
 int sqlite3PagerAlignReserve (int ,int ) ;
 int sqlite3PagerClearCache (int ) ;
 TYPE_2__* sqlite3PagerFile (int ) ;
 int sqlite3_backup_finish (TYPE_3__*) ;
 int sqlite3_backup_step (TYPE_3__*,int) ;

int sqlite3BtreeCopyFile(Btree *pTo, Btree *pFrom){
  int rc;
  sqlite3_file *pFd;
  sqlite3_backup b;
  sqlite3BtreeEnter(pTo);
  sqlite3BtreeEnter(pFrom);

  assert( sqlite3BtreeIsInTrans(pTo) );
  pFd = sqlite3PagerFile(sqlite3BtreePager(pTo));
  if( pFd->pMethods ){
    i64 nByte = sqlite3BtreeGetPageSize(pFrom)*(i64)sqlite3BtreeLastPage(pFrom);
    rc = sqlite3OsFileControl(pFd, SQLITE_FCNTL_OVERWRITE, &nByte);
    if( rc==SQLITE_NOTFOUND ) rc = SQLITE_OK;
    if( rc ) goto copy_finished;
  }






  memset(&b, 0, sizeof(b));
  b.pSrcDb = pFrom->db;
  b.pSrc = pFrom;
  b.pDest = pTo;
  b.iNext = 1;
  sqlite3_backup_step(&b, 0x7FFFFFFF);
  assert( b.rc!=SQLITE_OK );

  rc = sqlite3_backup_finish(&b);
  if( rc==SQLITE_OK ){
    pTo->pBt->btsFlags &= ~BTS_PAGESIZE_FIXED;
  }else{
    sqlite3PagerClearCache(sqlite3BtreePager(b.pDest));
  }

  assert( sqlite3BtreeIsInTrans(pTo)==0 );
copy_finished:
  sqlite3BtreeLeave(pFrom);
  sqlite3BtreeLeave(pTo);
  return rc;
}
