#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_8__ {TYPE_3__* pData; } ;
struct TYPE_7__ {int /*<<< orphan*/  zName; TYPE_1__* pLock; } ;
struct TYPE_6__ {scalar_t__ eLock; struct TYPE_6__* pNext; } ;
struct TYPE_5__ {TYPE_2__* pList; } ;
typedef  TYPE_2__ AsyncFileLock ;
typedef  TYPE_3__ AsyncFileData ;
typedef  TYPE_4__ AsyncFile ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_MUTEX_LOCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SQLITE_LOCK_RESERVED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sqlite3_file *pFile, int *pResOut){
  int ret = 0;
  AsyncFileLock *pIter;
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;

  FUNC1(ASYNC_MUTEX_LOCK);
  for(pIter=p->pLock->pList; pIter; pIter=pIter->pNext){
    if( pIter->eLock>=SQLITE_LOCK_RESERVED ){
      ret = 1;
      break;
    }
  }
  FUNC2(ASYNC_MUTEX_LOCK);

  FUNC0(("CHECK-LOCK %d (%s)\n", ret, p->zName));
  *pResOut = ret;
  return SQLITE_OK;
}