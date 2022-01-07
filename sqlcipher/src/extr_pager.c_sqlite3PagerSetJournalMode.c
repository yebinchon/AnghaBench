
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int journalMode; scalar_t__ tempFile; int eState; scalar_t__ eLock; int jfd; int zJournal; int pVfs; scalar_t__ exclusiveMode; int fd; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ MEMDB ;
 int PAGER_ERROR ;
 int PAGER_JOURNALMODE_DELETE ;
 int PAGER_JOURNALMODE_MEMORY ;
 int PAGER_JOURNALMODE_OFF ;
 int PAGER_JOURNALMODE_PERSIST ;
 int PAGER_JOURNALMODE_TRUNCATE ;
 int PAGER_JOURNALMODE_WAL ;
 int PAGER_OPEN ;
 int PAGER_READER ;
 scalar_t__ RESERVED_LOCK ;
 int SHARED_LOCK ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ isOpen (int ) ;
 int pagerLockDb (TYPE_1__*,scalar_t__) ;
 int pagerUnlockDb (TYPE_1__*,int ) ;
 int pager_unlock (TYPE_1__*) ;
 int sqlite3OsClose (int ) ;
 int sqlite3OsDelete (int ,int ,int ) ;
 int sqlite3PagerSharedLock (TYPE_1__*) ;

int sqlite3PagerSetJournalMode(Pager *pPager, int eMode){
  u8 eOld = pPager->journalMode;


  assert( eMode==PAGER_JOURNALMODE_DELETE
            || eMode==PAGER_JOURNALMODE_TRUNCATE
            || eMode==PAGER_JOURNALMODE_PERSIST
            || eMode==PAGER_JOURNALMODE_OFF
            || eMode==PAGER_JOURNALMODE_WAL
            || eMode==PAGER_JOURNALMODE_MEMORY );





  assert( pPager->tempFile==0 || eMode!=PAGER_JOURNALMODE_WAL );




  if( MEMDB ){
    assert( eOld==PAGER_JOURNALMODE_MEMORY || eOld==PAGER_JOURNALMODE_OFF );
    if( eMode!=PAGER_JOURNALMODE_MEMORY && eMode!=PAGER_JOURNALMODE_OFF ){
      eMode = eOld;
    }
  }

  if( eMode!=eOld ){


    assert( pPager->eState!=PAGER_ERROR );
    pPager->journalMode = (u8)eMode;





    assert( (PAGER_JOURNALMODE_TRUNCATE & 5)==1 );
    assert( (PAGER_JOURNALMODE_PERSIST & 5)==1 );
    assert( (PAGER_JOURNALMODE_DELETE & 5)==0 );
    assert( (PAGER_JOURNALMODE_MEMORY & 5)==4 );
    assert( (PAGER_JOURNALMODE_OFF & 5)==0 );
    assert( (PAGER_JOURNALMODE_WAL & 5)==5 );

    assert( isOpen(pPager->fd) || pPager->exclusiveMode );
    if( !pPager->exclusiveMode && (eOld & 5)==1 && (eMode & 1)==0 ){
      sqlite3OsClose(pPager->jfd);
      if( pPager->eLock>=RESERVED_LOCK ){
        sqlite3OsDelete(pPager->pVfs, pPager->zJournal, 0);
      }else{
        int rc = SQLITE_OK;
        int state = pPager->eState;
        assert( state==PAGER_OPEN || state==PAGER_READER );
        if( state==PAGER_OPEN ){
          rc = sqlite3PagerSharedLock(pPager);
        }
        if( pPager->eState==PAGER_READER ){
          assert( rc==SQLITE_OK );
          rc = pagerLockDb(pPager, RESERVED_LOCK);
        }
        if( rc==SQLITE_OK ){
          sqlite3OsDelete(pPager->pVfs, pPager->zJournal, 0);
        }
        if( rc==SQLITE_OK && state==PAGER_READER ){
          pagerUnlockDb(pPager, SHARED_LOCK);
        }else if( state==PAGER_OPEN ){
          pager_unlock(pPager);
        }
        assert( state==pPager->eState );
      }
    }else if( eMode==PAGER_JOURNALMODE_OFF ){
      sqlite3OsClose(pPager->jfd);
    }
  }


  return (int)pPager->journalMode;
}
