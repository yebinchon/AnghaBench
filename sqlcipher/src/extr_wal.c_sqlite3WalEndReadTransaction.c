
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int readLock; } ;
typedef TYPE_1__ Wal ;


 int WAL_READ_LOCK (int) ;
 int sqlite3WalEndWriteTransaction (TYPE_1__*) ;
 int walUnlockShared (TYPE_1__*,int ) ;

void sqlite3WalEndReadTransaction(Wal *pWal){
  sqlite3WalEndWriteTransaction(pWal);
  if( pWal->readLock>=0 ){
    walUnlockShared(pWal, WAL_READ_LOCK(pWal->readLock));
    pWal->readLock = -1;
  }
}
