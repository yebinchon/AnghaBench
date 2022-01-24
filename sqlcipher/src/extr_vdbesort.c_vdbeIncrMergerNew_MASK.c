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
struct TYPE_10__ {scalar_t__ mxSz; TYPE_3__* pTask; int /*<<< orphan*/ * pMerger; } ;
struct TYPE_8__ {int /*<<< orphan*/  iEof; } ;
struct TYPE_9__ {TYPE_2__ file2; TYPE_1__* pSorter; } ;
struct TYPE_7__ {int mxPmaSize; scalar_t__ mxKeysize; } ;
typedef  TYPE_3__ SortSubtask ;
typedef  int /*<<< orphan*/  MergeEngine ;
typedef  TYPE_4__ IncrMerger ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
  SortSubtask *pTask,     /* The thread that will be using the new IncrMerger */
  MergeEngine *pMerger,   /* The MergeEngine that the IncrMerger will control */
  IncrMerger **ppOut      /* Write the new IncrMerger here */
){
  int rc = SQLITE_OK;
  IncrMerger *pIncr = *ppOut = (IncrMerger*)
       (FUNC1(100) ? 0 : FUNC2(sizeof(*pIncr)));
  if( pIncr ){
    pIncr->pMerger = pMerger;
    pIncr->pTask = pTask;
    pIncr->mxSz = FUNC0(pTask->pSorter->mxKeysize+9,pTask->pSorter->mxPmaSize/2);
    pTask->file2.iEof += pIncr->mxSz;
  }else{
    FUNC3(pMerger);
    rc = SQLITE_NOMEM_BKPT;
  }
  return rc;
}