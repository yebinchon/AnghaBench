
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int dbFileVers ;
struct TYPE_18__ {scalar_t__ eState; int errCode; scalar_t__ tempFile; scalar_t__ eLock; int hasHeldSharedLock; scalar_t__ pWal; int dbSize; int fd; int dbFileVers; scalar_t__ exclusiveMode; int jfd; int zJournal; int * pVfs; scalar_t__ readOnly; int pPCache; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ EXCLUSIVE_LOCK ;
 int IOTRACE (char*) ;
 int MEMDB ;
 scalar_t__ NO_LOCK ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ PAGER_READER ;
 scalar_t__ SHARED_LOCK ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_CANTOPEN_BKPT ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_READONLY ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_READONLY_ROLLBACK ;
 scalar_t__ UNKNOWN_LOCK ;
 scalar_t__ USEFETCH (TYPE_1__*) ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 int hasHotJournal (TYPE_1__*,int*) ;
 scalar_t__ isOpen (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int pagerBeginReadTransaction (TYPE_1__*) ;
 int pagerLockDb (TYPE_1__*,scalar_t__) ;
 int pagerOpenWalIfPresent (TYPE_1__*) ;
 int pagerPagecount (TYPE_1__*,int *) ;
 int pagerSyncHotJournal (TYPE_1__*) ;
 int pagerUnlockDb (TYPE_1__*,scalar_t__) ;
 scalar_t__ pagerUseWal (TYPE_1__*) ;
 int pager_error (TYPE_1__*,int) ;
 int pager_playback (TYPE_1__*,int) ;
 int pager_reset (TYPE_1__*) ;
 int pager_unlock (TYPE_1__*) ;
 int pager_wait_on_lock (TYPE_1__*,scalar_t__) ;
 int sqlite3OsAccess (int * const,int ,int ,int*) ;
 int sqlite3OsClose (int ) ;
 int sqlite3OsOpen (int * const,int ,int ,int,int*) ;
 int sqlite3OsRead (int ,char**,int,int) ;
 int sqlite3OsUnfetch (int ,int ,int ) ;
 scalar_t__ sqlite3PcacheRefCount (int ) ;

int sqlite3PagerSharedLock(Pager *pPager){
  int rc = SQLITE_OK;





  assert( sqlite3PcacheRefCount(pPager->pPCache)==0 );
  assert( assert_pager_state(pPager) );
  assert( pPager->eState==PAGER_OPEN || pPager->eState==PAGER_READER );
  assert( pPager->errCode==SQLITE_OK );

  if( !pagerUseWal(pPager) && pPager->eState==PAGER_OPEN ){
    int bHotJournal = 1;

    assert( !MEMDB );
    assert( pPager->tempFile==0 || pPager->eLock==EXCLUSIVE_LOCK );

    rc = pager_wait_on_lock(pPager, SHARED_LOCK);
    if( rc!=SQLITE_OK ){
      assert( pPager->eLock==NO_LOCK || pPager->eLock==UNKNOWN_LOCK );
      goto failed;
    }




    if( pPager->eLock<=SHARED_LOCK ){
      rc = hasHotJournal(pPager, &bHotJournal);
    }
    if( rc!=SQLITE_OK ){
      goto failed;
    }
    if( bHotJournal ){
      if( pPager->readOnly ){
        rc = SQLITE_READONLY_ROLLBACK;
        goto failed;
      }
      rc = pagerLockDb(pPager, EXCLUSIVE_LOCK);
      if( rc!=SQLITE_OK ){
        goto failed;
      }
      if( !isOpen(pPager->jfd) ){
        sqlite3_vfs * const pVfs = pPager->pVfs;
        int bExists;
        rc = sqlite3OsAccess(
            pVfs, pPager->zJournal, SQLITE_ACCESS_EXISTS, &bExists);
        if( rc==SQLITE_OK && bExists ){
          int fout = 0;
          int f = SQLITE_OPEN_READWRITE|SQLITE_OPEN_MAIN_JOURNAL;
          assert( !pPager->tempFile );
          rc = sqlite3OsOpen(pVfs, pPager->zJournal, pPager->jfd, f, &fout);
          assert( rc!=SQLITE_OK || isOpen(pPager->jfd) );
          if( rc==SQLITE_OK && fout&SQLITE_OPEN_READONLY ){
            rc = SQLITE_CANTOPEN_BKPT;
            sqlite3OsClose(pPager->jfd);
          }
        }
      }
      if( isOpen(pPager->jfd) ){
        assert( rc==SQLITE_OK );
        rc = pagerSyncHotJournal(pPager);
        if( rc==SQLITE_OK ){
          rc = pager_playback(pPager, !pPager->tempFile);
          pPager->eState = PAGER_OPEN;
        }
      }else if( !pPager->exclusiveMode ){
        pagerUnlockDb(pPager, SHARED_LOCK);
      }

      if( rc!=SQLITE_OK ){
        pager_error(pPager, rc);
        goto failed;
      }

      assert( pPager->eState==PAGER_OPEN );
      assert( (pPager->eLock==SHARED_LOCK)
           || (pPager->exclusiveMode && pPager->eLock>SHARED_LOCK)
      );
    }

    if( !pPager->tempFile && pPager->hasHeldSharedLock ){
      char dbFileVers[sizeof(pPager->dbFileVers)];

      IOTRACE(("CKVERS %p %d\n", pPager, sizeof(dbFileVers)));
      rc = sqlite3OsRead(pPager->fd, &dbFileVers, sizeof(dbFileVers), 24);
      if( rc!=SQLITE_OK ){
        if( rc!=SQLITE_IOERR_SHORT_READ ){
          goto failed;
        }
        memset(dbFileVers, 0, sizeof(dbFileVers));
      }

      if( memcmp(pPager->dbFileVers, dbFileVers, sizeof(dbFileVers))!=0 ){
        pager_reset(pPager);







        if( USEFETCH(pPager) ){
          sqlite3OsUnfetch(pPager->fd, 0, 0);
        }
      }
    }




    rc = pagerOpenWalIfPresent(pPager);

    assert( pPager->pWal==0 || rc==SQLITE_OK );

  }

  if( pagerUseWal(pPager) ){
    assert( rc==SQLITE_OK );
    rc = pagerBeginReadTransaction(pPager);
  }

  if( pPager->tempFile==0 && pPager->eState==PAGER_OPEN && rc==SQLITE_OK ){
    rc = pagerPagecount(pPager, &pPager->dbSize);
  }

 failed:
  if( rc!=SQLITE_OK ){
    assert( !MEMDB );
    pager_unlock(pPager);
    assert( pPager->eState==PAGER_OPEN );
  }else{
    pPager->eState = PAGER_READER;
    pPager->hasHeldSharedLock = 1;
  }
  return rc;
}
