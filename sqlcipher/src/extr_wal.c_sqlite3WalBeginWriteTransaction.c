
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WalIndexHdr ;
struct TYPE_6__ {scalar_t__ readLock; int writeLock; scalar_t__ iReCksum; int hdr; scalar_t__ readOnly; } ;
typedef TYPE_1__ Wal ;


 int SQLITE_BUSY_SNAPSHOT ;
 int SQLITE_READONLY ;
 int WAL_WRITE_LOCK ;
 int assert (int) ;
 scalar_t__ memcmp (int *,void*,int) ;
 scalar_t__ walIndexHdr (TYPE_1__*) ;
 int walLockExclusive (TYPE_1__*,int ,int) ;
 int walUnlockExclusive (TYPE_1__*,int ,int) ;

int sqlite3WalBeginWriteTransaction(Wal *pWal){
  int rc;



  assert( pWal->readLock>=0 );
  assert( pWal->writeLock==0 && pWal->iReCksum==0 );

  if( pWal->readOnly ){
    return SQLITE_READONLY;
  }




  rc = walLockExclusive(pWal, WAL_WRITE_LOCK, 1);
  if( rc ){
    return rc;
  }
  pWal->writeLock = 1;





  if( memcmp(&pWal->hdr, (void *)walIndexHdr(pWal), sizeof(WalIndexHdr))!=0 ){
    walUnlockExclusive(pWal, WAL_WRITE_LOCK, 1);
    pWal->writeLock = 0;
    rc = SQLITE_BUSY_SNAPSHOT;
  }

  return rc;
}
