
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_8__ {TYPE_3__* pData; } ;
struct TYPE_7__ {int zName; TYPE_1__* pLock; } ;
struct TYPE_6__ {scalar_t__ eLock; struct TYPE_6__* pNext; } ;
struct TYPE_5__ {TYPE_2__* pList; } ;
typedef TYPE_2__ AsyncFileLock ;
typedef TYPE_3__ AsyncFileData ;
typedef TYPE_4__ AsyncFile ;


 int ASYNC_MUTEX_LOCK ;
 int ASYNC_TRACE (char*) ;
 scalar_t__ SQLITE_LOCK_RESERVED ;
 int SQLITE_OK ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;

__attribute__((used)) static int asyncCheckReservedLock(sqlite3_file *pFile, int *pResOut){
  int ret = 0;
  AsyncFileLock *pIter;
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;

  async_mutex_enter(ASYNC_MUTEX_LOCK);
  for(pIter=p->pLock->pList; pIter; pIter=pIter->pNext){
    if( pIter->eLock>=SQLITE_LOCK_RESERVED ){
      ret = 1;
      break;
    }
  }
  async_mutex_leave(ASYNC_MUTEX_LOCK);

  ASYNC_TRACE(("CHECK-LOCK %d (%s)\n", ret, p->zName));
  *pResOut = ret;
  return SQLITE_OK;
}
