
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int u8 ;
typedef int sqlite3 ;
typedef int WalIndexHdr ;
struct TYPE_16__ {scalar_t__ mxFrame; } ;
struct TYPE_18__ {int ckptLock; int writeLock; TYPE_14__ hdr; TYPE_13__* pDbFd; scalar_t__ readOnly; } ;
typedef TYPE_2__ Wal ;
struct TYPE_19__ {scalar_t__ nBackfill; } ;
struct TYPE_17__ {int iVersion; } ;
struct TYPE_15__ {TYPE_1__* pMethods; } ;


 int SQLITE_BUSY ;
 int SQLITE_CHECKPOINT_PASSIVE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int SQLITE_READONLY ;
 int WALTRACE (char*) ;
 int WAL_CKPT_LOCK ;
 int WAL_WRITE_LOCK ;
 int assert (int) ;
 int memset (TYPE_14__*,int ,int) ;
 int sqlite3OsUnfetch (TYPE_13__*,int ,int ) ;
 int sqlite3WalEndWriteTransaction (TYPE_2__*) ;
 int testcase (int) ;
 int walBusyLock (TYPE_2__*,int (*) (void*),void*,int ,int) ;
 int walCheckpoint (TYPE_2__*,int *,int,int (*) (void*),void*,int,int *) ;
 TYPE_7__* walCkptInfo (TYPE_2__*) ;
 int walIndexReadHdr (TYPE_2__*,int*) ;
 int walLockExclusive (TYPE_2__*,int ,int) ;
 int walPagesize (TYPE_2__*) ;
 int walUnlockExclusive (TYPE_2__*,int ,int) ;

int sqlite3WalCheckpoint(
  Wal *pWal,
  sqlite3 *db,
  int eMode,
  int (*xBusy)(void*),
  void *pBusyArg,
  int sync_flags,
  int nBuf,
  u8 *zBuf,
  int *pnLog,
  int *pnCkpt
){
  int rc;
  int isChanged = 0;
  int eMode2 = eMode;
  int (*xBusy2)(void*) = xBusy;

  assert( pWal->ckptLock==0 );
  assert( pWal->writeLock==0 );



  assert( eMode!=SQLITE_CHECKPOINT_PASSIVE || xBusy==0 );

  if( pWal->readOnly ) return SQLITE_READONLY;
  WALTRACE(("WAL%p: checkpoint begins\n", pWal));



  rc = walLockExclusive(pWal, WAL_CKPT_LOCK, 1);
  if( rc ){






    testcase( rc==SQLITE_BUSY );
    testcase( xBusy!=0 );
    return rc;
  }
  pWal->ckptLock = 1;
  if( eMode!=SQLITE_CHECKPOINT_PASSIVE ){
    rc = walBusyLock(pWal, xBusy, pBusyArg, WAL_WRITE_LOCK, 1);
    if( rc==SQLITE_OK ){
      pWal->writeLock = 1;
    }else if( rc==SQLITE_BUSY ){
      eMode2 = SQLITE_CHECKPOINT_PASSIVE;
      xBusy2 = 0;
      rc = SQLITE_OK;
    }
  }


  if( rc==SQLITE_OK ){
    rc = walIndexReadHdr(pWal, &isChanged);
    if( isChanged && pWal->pDbFd->pMethods->iVersion>=3 ){
      sqlite3OsUnfetch(pWal->pDbFd, 0, 0);
    }
  }


  if( rc==SQLITE_OK ){

    if( pWal->hdr.mxFrame && walPagesize(pWal)!=nBuf ){
      rc = SQLITE_CORRUPT_BKPT;
    }else{
      rc = walCheckpoint(pWal, db, eMode2, xBusy2, pBusyArg, sync_flags, zBuf);
    }


    if( rc==SQLITE_OK || rc==SQLITE_BUSY ){
      if( pnLog ) *pnLog = (int)pWal->hdr.mxFrame;
      if( pnCkpt ) *pnCkpt = (int)(walCkptInfo(pWal)->nBackfill);
    }
  }

  if( isChanged ){






    memset(&pWal->hdr, 0, sizeof(WalIndexHdr));
  }


  sqlite3WalEndWriteTransaction(pWal);
  walUnlockExclusive(pWal, WAL_CKPT_LOCK, 1);
  pWal->ckptLock = 0;
  WALTRACE(("WAL%p: checkpoint %s\n", pWal, rc ? "failed" : "ok"));
  return (rc==SQLITE_OK && eMode!=eMode2 ? SQLITE_BUSY : rc);
}
