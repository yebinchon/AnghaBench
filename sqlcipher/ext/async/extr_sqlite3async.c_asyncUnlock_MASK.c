#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_7__ {TYPE_2__* pData; } ;
struct TYPE_5__ {int /*<<< orphan*/  eLock; } ;
struct TYPE_6__ {TYPE_1__ lock; scalar_t__ zName; } ;
typedef  TYPE_1__ AsyncFileLock ;
typedef  TYPE_2__ AsyncFileData ;
typedef  TYPE_3__ AsyncFile ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_MUTEX_LOCK ; 
 int /*<<< orphan*/  ASYNC_MUTEX_QUEUE ; 
 int /*<<< orphan*/  ASYNC_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SQLITE_OK ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sqlite3_file *pFile, int eLock){
  int rc = SQLITE_OK;
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;
  if( p->zName ){
    AsyncFileLock *pLock = &p->lock;
    FUNC2(ASYNC_MUTEX_QUEUE);
    FUNC2(ASYNC_MUTEX_LOCK);
    pLock->eLock = FUNC0(pLock->eLock, eLock);
    rc = FUNC1(p, ASYNC_UNLOCK, 0, eLock, 0);
    FUNC3(ASYNC_MUTEX_LOCK);
    FUNC3(ASYNC_MUTEX_QUEUE);
  }
  return rc;
}