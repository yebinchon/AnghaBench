
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ truncateOnCommit; scalar_t__ iReCksum; scalar_t__ writeLock; } ;
typedef TYPE_1__ Wal ;


 int SQLITE_OK ;
 int WAL_WRITE_LOCK ;
 int walUnlockExclusive (TYPE_1__*,int ,int) ;

int sqlite3WalEndWriteTransaction(Wal *pWal){
  if( pWal->writeLock ){
    walUnlockExclusive(pWal, WAL_WRITE_LOCK, 1);
    pWal->writeLock = 0;
    pWal->iReCksum = 0;
    pWal->truncateOnCommit = 0;
  }
  return SQLITE_OK;
}
