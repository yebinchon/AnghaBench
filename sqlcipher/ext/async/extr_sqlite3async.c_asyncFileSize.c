
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_10__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_14__ {TYPE_3__* pQueueFirst; } ;
struct TYPE_13__ {TYPE_4__* pData; } ;
struct TYPE_12__ {scalar_t__ zName; TYPE_2__* pBaseRead; } ;
struct TYPE_11__ {int op; scalar_t__ iOffset; int nByte; TYPE_4__* pFileData; int zBuf; struct TYPE_11__* pNext; } ;
struct TYPE_9__ {int (* xFileSize ) (TYPE_2__*,scalar_t__*) ;} ;
typedef TYPE_3__ AsyncWrite ;
typedef TYPE_4__ AsyncFileData ;
typedef TYPE_5__ AsyncFile ;


 int ASYNC_DELETE ;
 int ASYNC_MUTEX_QUEUE ;


 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int SQLITE_OK ;
 TYPE_8__ async ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 int stub1 (TYPE_2__*,scalar_t__*) ;

int asyncFileSize(sqlite3_file *pFile, sqlite3_int64 *piSize){
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;
  int rc = SQLITE_OK;
  sqlite3_int64 s = 0;
  sqlite3_file *pBase;

  async_mutex_enter(ASYNC_MUTEX_QUEUE);






  pBase = p->pBaseRead;
  if( pBase->pMethods ){
    rc = pBase->pMethods->xFileSize(pBase, &s);
  }

  if( rc==SQLITE_OK ){
    AsyncWrite *pWrite;
    for(pWrite=async.pQueueFirst; pWrite; pWrite = pWrite->pNext){
      if( pWrite->op==ASYNC_DELETE
       && p->zName
       && strcmp(p->zName, pWrite->zBuf)==0
      ){
        s = 0;
      }else if( pWrite->pFileData && (
          (pWrite->pFileData==p)
       || (p->zName && pWrite->pFileData->zName==p->zName)
      )){
        switch( pWrite->op ){
          case 128:
            s = MAX(pWrite->iOffset + (sqlite3_int64)(pWrite->nByte), s);
            break;
          case 129:
            s = MIN(s, pWrite->iOffset);
            break;
        }
      }
    }
    *piSize = s;
  }
  async_mutex_leave(ASYNC_MUTEX_QUEUE);
  return rc;
}
