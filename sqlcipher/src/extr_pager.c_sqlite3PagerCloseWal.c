
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_8__ {scalar_t__ journalMode; int exclusiveMode; scalar_t__ pWal; scalar_t__ pTmpSpace; int pageSize; int walSyncFlags; int zWal; int pVfs; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_JOURNALMODE_WAL ;
 int SHARED_LOCK ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_OK ;
 int assert (int) ;
 int pagerExclusiveLock (TYPE_1__*) ;
 int pagerFixMaplimit (TYPE_1__*) ;
 int pagerLockDb (TYPE_1__*,int ) ;
 int pagerOpenWal (TYPE_1__*) ;
 int pagerUnlockDb (TYPE_1__*,int ) ;
 int sqlite3OsAccess (int ,int ,int ,int*) ;
 int sqlite3WalClose (scalar_t__,int *,int ,int ,int *) ;

int sqlite3PagerCloseWal(Pager *pPager, sqlite3 *db){
  int rc = SQLITE_OK;

  assert( pPager->journalMode==PAGER_JOURNALMODE_WAL );





  if( !pPager->pWal ){
    int logexists = 0;
    rc = pagerLockDb(pPager, SHARED_LOCK);
    if( rc==SQLITE_OK ){
      rc = sqlite3OsAccess(
          pPager->pVfs, pPager->zWal, SQLITE_ACCESS_EXISTS, &logexists
      );
    }
    if( rc==SQLITE_OK && logexists ){
      rc = pagerOpenWal(pPager);
    }
  }




  if( rc==SQLITE_OK && pPager->pWal ){
    rc = pagerExclusiveLock(pPager);
    if( rc==SQLITE_OK ){
      rc = sqlite3WalClose(pPager->pWal, db, pPager->walSyncFlags,
                           pPager->pageSize, (u8*)pPager->pTmpSpace);
      pPager->pWal = 0;
      pagerFixMaplimit(pPager);
      if( rc && !pPager->exclusiveMode ) pagerUnlockDb(pPager, SHARED_LOCK);
    }
  }
  return rc;
}
