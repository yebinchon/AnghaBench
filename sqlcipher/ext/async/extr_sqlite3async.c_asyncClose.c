
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_6__ {TYPE_2__* pData; } ;
struct TYPE_4__ {scalar_t__ eLock; } ;
struct TYPE_5__ {int closeOp; TYPE_1__ lock; } ;
typedef TYPE_2__ AsyncFileData ;
typedef TYPE_3__ AsyncFile ;


 int ASYNC_MUTEX_LOCK ;
 int SQLITE_OK ;
 int addAsyncWrite (int *) ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;

__attribute__((used)) static int asyncClose(sqlite3_file *pFile){
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;


  async_mutex_enter(ASYNC_MUTEX_LOCK);
  p->lock.eLock = 0;
  async_mutex_leave(ASYNC_MUTEX_LOCK);

  addAsyncWrite(&p->closeOp);
  return SQLITE_OK;
}
