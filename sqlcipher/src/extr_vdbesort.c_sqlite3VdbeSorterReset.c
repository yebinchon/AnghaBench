
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {scalar_t__ aMemory; scalar_t__ szPMA; scalar_t__ pList; } ;
struct TYPE_8__ {scalar_t__ pReader; int nTask; scalar_t__ pUnpacked; scalar_t__ mxKeysize; scalar_t__ iMemory; scalar_t__ bUsePMA; TYPE_1__ list; TYPE_3__* aTask; scalar_t__ pMerger; scalar_t__ bUseThreads; } ;
typedef TYPE_2__ VdbeSorter ;
struct TYPE_9__ {TYPE_2__* pSorter; } ;
typedef TYPE_3__ SortSubtask ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3DbFree (int *,scalar_t__) ;
 int vdbeMergeEngineFree (scalar_t__) ;
 int vdbePmaReaderClear (scalar_t__) ;
 int vdbeSortSubtaskCleanup (int *,TYPE_3__*) ;
 int vdbeSorterJoinAll (TYPE_2__*,int ) ;
 int vdbeSorterRecordFree (int ,scalar_t__) ;

void sqlite3VdbeSorterReset(sqlite3 *db, VdbeSorter *pSorter){
  int i;
  (void)vdbeSorterJoinAll(pSorter, SQLITE_OK);
  assert( pSorter->bUseThreads || pSorter->pReader==0 );







  vdbeMergeEngineFree(pSorter->pMerger);
  pSorter->pMerger = 0;
  for(i=0; i<pSorter->nTask; i++){
    SortSubtask *pTask = &pSorter->aTask[i];
    vdbeSortSubtaskCleanup(db, pTask);
    pTask->pSorter = pSorter;
  }
  if( pSorter->list.aMemory==0 ){
    vdbeSorterRecordFree(0, pSorter->list.pList);
  }
  pSorter->list.pList = 0;
  pSorter->list.szPMA = 0;
  pSorter->bUsePMA = 0;
  pSorter->iMemory = 0;
  pSorter->mxKeysize = 0;
  sqlite3DbFree(db, pSorter->pUnpacked);
  pSorter->pUnpacked = 0;
}
