#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_8__ {scalar_t__ pFd; } ;
struct TYPE_7__ {scalar_t__ pFd; } ;
struct TYPE_9__ {scalar_t__ aMemory; int /*<<< orphan*/  pList; } ;
struct TYPE_10__ {TYPE_2__ file2; TYPE_1__ file; TYPE_3__ list; int /*<<< orphan*/  pUnpacked; } ;
typedef  TYPE_4__ SortSubtask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(sqlite3 *db, SortSubtask *pTask){
  FUNC2(db, pTask->pUnpacked);
#if SQLITE_MAX_WORKER_THREADS>0
  /* pTask->list.aMemory can only be non-zero if it was handed memory
  ** from the main thread.  That only occurs SQLITE_MAX_WORKER_THREADS>0 */
  if( pTask->list.aMemory ){
    sqlite3_free(pTask->list.aMemory);
  }else
#endif
  {
    FUNC0( pTask->list.aMemory==0 );
    FUNC5(0, pTask->list.pList);
  }
  if( pTask->file.pFd ){
    FUNC3(pTask->file.pFd);
  }
  if( pTask->file2.pFd ){
    FUNC3(pTask->file2.pFd);
  }
  FUNC1(pTask, 0, sizeof(SortSubtask));
}