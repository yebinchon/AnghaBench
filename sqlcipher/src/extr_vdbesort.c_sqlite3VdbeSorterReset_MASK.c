#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {scalar_t__ aMemory; scalar_t__ szPMA; scalar_t__ pList; } ;
struct TYPE_8__ {scalar_t__ pReader; int nTask; scalar_t__ pUnpacked; scalar_t__ mxKeysize; scalar_t__ iMemory; scalar_t__ bUsePMA; TYPE_1__ list; TYPE_3__* aTask; scalar_t__ pMerger; scalar_t__ bUseThreads; } ;
typedef  TYPE_2__ VdbeSorter ;
struct TYPE_9__ {TYPE_2__* pSorter; } ;
typedef  TYPE_3__ SortSubtask ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(sqlite3 *db, VdbeSorter *pSorter){
  int i;
  (void)FUNC5(pSorter, SQLITE_OK);
  FUNC0( pSorter->bUseThreads || pSorter->pReader==0 );
#if SQLITE_MAX_WORKER_THREADS>0
  if( pSorter->pReader ){
    vdbePmaReaderClear(pSorter->pReader);
    sqlite3DbFree(db, pSorter->pReader);
    pSorter->pReader = 0;
  }
#endif
  FUNC2(pSorter->pMerger);
  pSorter->pMerger = 0;
  for(i=0; i<pSorter->nTask; i++){
    SortSubtask *pTask = &pSorter->aTask[i];
    FUNC4(db, pTask);
    pTask->pSorter = pSorter;
  }
  if( pSorter->list.aMemory==0 ){
    FUNC6(0, pSorter->list.pList);
  }
  pSorter->list.pList = 0;
  pSorter->list.szPMA = 0;
  pSorter->bUsePMA = 0;
  pSorter->iMemory = 0;
  pSorter->mxKeysize = 0;
  FUNC1(db, pSorter->pUnpacked);
  pSorter->pUnpacked = 0;
}