
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* pMethods; } ;
struct TYPE_9__ {int eAsyncLock; int eLock; struct TYPE_9__* pNext; } ;
struct TYPE_8__ {int eLock; TYPE_4__* pFile; TYPE_3__* pList; } ;
struct TYPE_7__ {int (* xLock ) (TYPE_4__*,int) ;int (* xUnlock ) (TYPE_4__*,int) ;} ;
typedef TYPE_2__ AsyncLock ;
typedef TYPE_3__ AsyncFileLock ;


 int SQLITE_LOCK_EXCLUSIVE ;
 int SQLITE_LOCK_SHARED ;
 int SQLITE_OK ;
 int assert (int) ;
 int stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_4__*,int) ;

__attribute__((used)) static int getFileLock(AsyncLock *pLock){
  int rc = SQLITE_OK;
  AsyncFileLock *pIter;
  int eRequired = 0;

  if( pLock->pFile ){
    for(pIter=pLock->pList; pIter; pIter=pIter->pNext){
      assert(pIter->eAsyncLock>=pIter->eLock);
      if( pIter->eAsyncLock>eRequired ){
        eRequired = pIter->eAsyncLock;
        assert(eRequired>=0 && eRequired<=SQLITE_LOCK_EXCLUSIVE);
      }
    }

    if( eRequired>pLock->eLock ){
      rc = pLock->pFile->pMethods->xLock(pLock->pFile, eRequired);
      if( rc==SQLITE_OK ){
        pLock->eLock = eRequired;
      }
    }
    else if( eRequired<pLock->eLock && eRequired<=SQLITE_LOCK_SHARED ){
      rc = pLock->pFile->pMethods->xUnlock(pLock->pFile, eRequired);
      if( rc==SQLITE_OK ){
        pLock->eLock = eRequired;
      }
    }
  }

  return rc;
}
