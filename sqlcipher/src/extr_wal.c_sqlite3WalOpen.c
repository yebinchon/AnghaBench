
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ szOsFile; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int sqlite3_file ;
typedef int i64 ;
struct TYPE_9__ {int readLock; char const* zWalName; int syncHeader; int padToSectorBoundary; int * pWalFd; int readOnly; int exclusiveMode; int mxWalSize; int * pDbFd; TYPE_1__* pVfs; } ;
typedef TYPE_2__ Wal ;


 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ;
 int SQLITE_IOCAP_SEQUENTIAL ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_READONLY ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_WAL ;
 int UNIX_SHM_BASE ;
 int WALINDEX_HDR_SIZE ;
 int WALINDEX_LOCK_OFFSET ;
 int WALTRACE (char*) ;
 int WAL_HEAPMEMORY_MODE ;
 int WAL_NORMAL_MODE ;
 int WAL_RDONLY ;
 int WIN_SHM_BASE ;
 int assert (int) ;
 scalar_t__ sqlite3MallocZero (scalar_t__) ;
 int sqlite3OsClose (int *) ;
 int sqlite3OsDeviceCharacteristics (int *) ;
 int sqlite3OsOpen (TYPE_1__*,char const*,int *,int,int*) ;
 int sqlite3_free (TYPE_2__*) ;
 int walIndexClose (TYPE_2__*,int ) ;

int sqlite3WalOpen(
  sqlite3_vfs *pVfs,
  sqlite3_file *pDbFd,
  const char *zWalName,
  int bNoShm,
  i64 mxWalSize,
  Wal **ppWal
){
  int rc;
  Wal *pRet;
  int flags;

  assert( zWalName && zWalName[0] );
  assert( pDbFd );







  assert( 120==WALINDEX_LOCK_OFFSET );
  assert( 136==WALINDEX_HDR_SIZE );
  *ppWal = 0;
  pRet = (Wal*)sqlite3MallocZero(sizeof(Wal) + pVfs->szOsFile);
  if( !pRet ){
    return SQLITE_NOMEM_BKPT;
  }

  pRet->pVfs = pVfs;
  pRet->pWalFd = (sqlite3_file *)&pRet[1];
  pRet->pDbFd = pDbFd;
  pRet->readLock = -1;
  pRet->mxWalSize = mxWalSize;
  pRet->zWalName = zWalName;
  pRet->syncHeader = 1;
  pRet->padToSectorBoundary = 1;
  pRet->exclusiveMode = (bNoShm ? WAL_HEAPMEMORY_MODE: WAL_NORMAL_MODE);


  flags = (SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE|SQLITE_OPEN_WAL);
  rc = sqlite3OsOpen(pVfs, zWalName, pRet->pWalFd, flags, &flags);
  if( rc==SQLITE_OK && flags&SQLITE_OPEN_READONLY ){
    pRet->readOnly = WAL_RDONLY;
  }

  if( rc!=SQLITE_OK ){
    walIndexClose(pRet, 0);
    sqlite3OsClose(pRet->pWalFd);
    sqlite3_free(pRet);
  }else{
    int iDC = sqlite3OsDeviceCharacteristics(pDbFd);
    if( iDC & SQLITE_IOCAP_SEQUENTIAL ){ pRet->syncHeader = 0; }
    if( iDC & SQLITE_IOCAP_POWERSAFE_OVERWRITE ){
      pRet->padToSectorBoundary = 0;
    }
    *ppWal = pRet;
    WALTRACE(("WAL%d: opened\n", pRet));
  }
  return rc;
}
