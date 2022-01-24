#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_9__ {TYPE_3__* pData; } ;
struct TYPE_7__ {int eLock; int eAsyncLock; struct TYPE_7__* pNext; } ;
struct TYPE_8__ {scalar_t__ zName; TYPE_2__ lock; TYPE_1__* pLock; } ;
struct TYPE_6__ {TYPE_2__* pList; } ;
typedef  TYPE_1__ AsyncLock ;
typedef  TYPE_2__ AsyncFileLock ;
typedef  TYPE_3__ AsyncFileData ;
typedef  TYPE_4__ AsyncFile ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_MUTEX_LOCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int) ; 
 int SQLITE_BUSY ; 
 int SQLITE_LOCK_EXCLUSIVE ; 
 int SQLITE_LOCK_PENDING ; 
 int SQLITE_LOCK_RESERVED ; 
 int SQLITE_LOCK_SHARED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(sqlite3_file *pFile, int eLock){
  int rc = SQLITE_OK;
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;

  if( p->zName ){
    FUNC3(ASYNC_MUTEX_LOCK);
    if( p->lock.eLock<eLock ){
      AsyncLock *pLock = p->pLock;
      AsyncFileLock *pIter;
      FUNC2(pLock && pLock->pList);
      for(pIter=pLock->pList; pIter; pIter=pIter->pNext){
        if( pIter!=&p->lock && (
          (eLock==SQLITE_LOCK_EXCLUSIVE && pIter->eLock>=SQLITE_LOCK_SHARED) ||
          (eLock==SQLITE_LOCK_PENDING && pIter->eLock>=SQLITE_LOCK_RESERVED) ||
          (eLock==SQLITE_LOCK_RESERVED && pIter->eLock>=SQLITE_LOCK_RESERVED) ||
          (eLock==SQLITE_LOCK_SHARED && pIter->eLock>=SQLITE_LOCK_PENDING)
        )){
          rc = SQLITE_BUSY;
        }
      }
      if( rc==SQLITE_OK ){
        p->lock.eLock = eLock;
        p->lock.eAsyncLock = FUNC1(p->lock.eAsyncLock, eLock);
      }
      FUNC2(p->lock.eAsyncLock>=p->lock.eLock);
      if( rc==SQLITE_OK ){
        rc = FUNC5(pLock);
      }
    }
    FUNC4(ASYNC_MUTEX_LOCK);
  }

  FUNC0(("LOCK %d (%s) rc=%d\n", eLock, p->zName, rc));
  return rc;
}