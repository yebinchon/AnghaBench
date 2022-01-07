
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nLock; scalar_t__ bProcessLock; int pLockMutex; } ;
typedef TYPE_1__ unixInodeInfo ;
struct TYPE_8__ {TYPE_1__* pInode; } ;
typedef TYPE_2__ unixFile ;
typedef int sqlite3_file ;


 int NO_LOCK ;
 int SQLITE_OK ;
 int assert (int) ;
 int closeUnixFile (int *) ;
 int releaseInodeInfo (TYPE_2__*) ;
 int setPendingFd (TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int unixEnterMutex () ;
 int unixFileMutexNotheld (TYPE_2__*) ;
 int unixLeaveMutex () ;
 int unixUnlock (int *,int ) ;
 int verifyDbFile (TYPE_2__*) ;

__attribute__((used)) static int unixClose(sqlite3_file *id){
  int rc = SQLITE_OK;
  unixFile *pFile = (unixFile *)id;
  unixInodeInfo *pInode = pFile->pInode;

  assert( pInode!=0 );
  verifyDbFile(pFile);
  unixUnlock(id, NO_LOCK);
  assert( unixFileMutexNotheld(pFile) );
  unixEnterMutex();




  assert( pFile->pInode->nLock>0 || pFile->pInode->bProcessLock==0 );
  sqlite3_mutex_enter(pInode->pLockMutex);
  if( pInode->nLock ){





    setPendingFd(pFile);
  }
  sqlite3_mutex_leave(pInode->pLockMutex);
  releaseInodeInfo(pFile);
  rc = closeUnixFile(id);
  unixLeaveMutex();
  return rc;
}
