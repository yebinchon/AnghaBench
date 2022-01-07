
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_6__ {TYPE_2__* pData; } ;
struct TYPE_4__ {int eLock; } ;
struct TYPE_5__ {TYPE_1__ lock; } ;
typedef TYPE_3__ AsyncFile ;


 int ASYNC_MUTEX_LOCK ;

 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;

__attribute__((used)) static int asyncFileControl(sqlite3_file *id, int op, void *pArg){
  switch( op ){
    case 128: {
      async_mutex_enter(ASYNC_MUTEX_LOCK);
      *(int*)pArg = ((AsyncFile*)id)->pData->lock.eLock;
      async_mutex_leave(ASYNC_MUTEX_LOCK);
      return SQLITE_OK;
    }
  }
  return SQLITE_NOTFOUND;
}
