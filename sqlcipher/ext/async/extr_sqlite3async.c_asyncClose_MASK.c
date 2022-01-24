#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_6__ {TYPE_2__* pData; } ;
struct TYPE_4__ {scalar_t__ eLock; } ;
struct TYPE_5__ {int /*<<< orphan*/  closeOp; TYPE_1__ lock; } ;
typedef  TYPE_2__ AsyncFileData ;
typedef  TYPE_3__ AsyncFile ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_MUTEX_LOCK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sqlite3_file *pFile){
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;

  /* Unlock the file, if it is locked */
  FUNC1(ASYNC_MUTEX_LOCK);
  p->lock.eLock = 0;
  FUNC2(ASYNC_MUTEX_LOCK);

  FUNC0(&p->closeOp);
  return SQLITE_OK;
}