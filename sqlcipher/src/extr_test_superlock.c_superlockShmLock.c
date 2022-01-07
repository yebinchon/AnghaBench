
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_5__ {int (* xShmLock ) (TYPE_2__*,int,int,int) ;} ;
typedef int SuperlockBusy ;


 int SQLITE_BUSY ;
 int SQLITE_SHM_EXCLUSIVE ;
 int SQLITE_SHM_LOCK ;
 scalar_t__ superlockBusyHandler (void*,int ) ;

__attribute__((used)) static int superlockShmLock(
  sqlite3_file *fd,
  int idx,
  int nByte,
  SuperlockBusy *pBusy
){
  int rc;
  int (*xShmLock)(sqlite3_file*, int, int, int) = fd->pMethods->xShmLock;
  do {
    rc = xShmLock(fd, idx, nByte, SQLITE_SHM_LOCK|SQLITE_SHM_EXCLUSIVE);
  }while( rc==SQLITE_BUSY && superlockBusyHandler((void *)pBusy, 0) );
  return rc;
}
