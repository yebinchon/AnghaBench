
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_7__ {TYPE_2__* pData; } ;
struct TYPE_5__ {int eLock; } ;
struct TYPE_6__ {TYPE_1__ lock; scalar_t__ zName; } ;
typedef TYPE_1__ AsyncFileLock ;
typedef TYPE_2__ AsyncFileData ;
typedef TYPE_3__ AsyncFile ;


 int ASYNC_MUTEX_LOCK ;
 int ASYNC_MUTEX_QUEUE ;
 int ASYNC_UNLOCK ;
 int MIN (int ,int) ;
 int SQLITE_OK ;
 int addNewAsyncWrite (TYPE_2__*,int ,int ,int,int ) ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;

__attribute__((used)) static int asyncUnlock(sqlite3_file *pFile, int eLock){
  int rc = SQLITE_OK;
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;
  if( p->zName ){
    AsyncFileLock *pLock = &p->lock;
    async_mutex_enter(ASYNC_MUTEX_QUEUE);
    async_mutex_enter(ASYNC_MUTEX_LOCK);
    pLock->eLock = MIN(pLock->eLock, eLock);
    rc = addNewAsyncWrite(p, ASYNC_UNLOCK, 0, eLock, 0);
    async_mutex_leave(ASYNC_MUTEX_LOCK);
    async_mutex_leave(ASYNC_MUTEX_QUEUE);
  }
  return rc;
}
