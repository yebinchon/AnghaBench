
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ writeLock; scalar_t__ exclusiveMode; scalar_t__ readLock; scalar_t__ lockError; } ;
typedef TYPE_1__ Wal ;


 scalar_t__ SQLITE_OK ;
 void* WAL_EXCLUSIVE_MODE ;
 scalar_t__ WAL_HEAPMEMORY_MODE ;
 scalar_t__ WAL_NORMAL_MODE ;
 int WAL_READ_LOCK (scalar_t__) ;
 int assert (int) ;
 scalar_t__ walLockShared (TYPE_1__*,int ) ;
 int walUnlockShared (TYPE_1__*,int ) ;

int sqlite3WalExclusiveMode(Wal *pWal, int op){
  int rc;
  assert( pWal->writeLock==0 );
  assert( pWal->exclusiveMode!=WAL_HEAPMEMORY_MODE || op==-1 );







  assert( pWal->readLock>=0 || pWal->lockError );
  assert( pWal->readLock>=0 || (op<=0 && pWal->exclusiveMode==0) );

  if( op==0 ){
    if( pWal->exclusiveMode!=WAL_NORMAL_MODE ){
      pWal->exclusiveMode = WAL_NORMAL_MODE;
      if( walLockShared(pWal, WAL_READ_LOCK(pWal->readLock))!=SQLITE_OK ){
        pWal->exclusiveMode = WAL_EXCLUSIVE_MODE;
      }
      rc = pWal->exclusiveMode==WAL_NORMAL_MODE;
    }else{

      rc = 0;
    }
  }else if( op>0 ){
    assert( pWal->exclusiveMode==WAL_NORMAL_MODE );
    assert( pWal->readLock>=0 );
    walUnlockShared(pWal, WAL_READ_LOCK(pWal->readLock));
    pWal->exclusiveMode = WAL_EXCLUSIVE_MODE;
    rc = 1;
  }else{
    rc = pWal->exclusiveMode==WAL_NORMAL_MODE;
  }
  return rc;
}
