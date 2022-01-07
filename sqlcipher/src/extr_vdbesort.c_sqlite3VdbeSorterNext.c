
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_13__ {scalar_t__ aMemory; TYPE_6__* pList; } ;
struct TYPE_14__ {int bUseThreads; TYPE_3__ list; TYPE_9__* pMerger; int * aTask; TYPE_8__* pReader; scalar_t__ bUsePMA; } ;
typedef TYPE_4__ VdbeSorter ;
struct TYPE_11__ {TYPE_4__* pSorter; } ;
struct TYPE_15__ {scalar_t__ eCurType; TYPE_1__ uc; } ;
typedef TYPE_5__ VdbeCursor ;
struct TYPE_18__ {int * pTask; } ;
struct TYPE_17__ {scalar_t__ pFd; } ;
struct TYPE_12__ {TYPE_6__* pNext; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
typedef TYPE_6__ SorterRecord ;


 scalar_t__ CURTYPE_SORTER ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int assert (int) ;
 int vdbeMergeEngineStep (TYPE_9__*,int*) ;
 int vdbePmaReaderNext (TYPE_8__*) ;
 int vdbeSorterRecordFree (int *,TYPE_6__*) ;

int sqlite3VdbeSorterNext(sqlite3 *db, const VdbeCursor *pCsr){
  VdbeSorter *pSorter;
  int rc;

  assert( pCsr->eCurType==CURTYPE_SORTER );
  pSorter = pCsr->uc.pSorter;
  assert( pSorter->bUsePMA || (pSorter->pReader==0 && pSorter->pMerger==0) );
  if( pSorter->bUsePMA ){
    assert( pSorter->pReader==0 || pSorter->pMerger==0 );
    assert( pSorter->bUseThreads==0 || pSorter->pReader );
    assert( pSorter->bUseThreads==1 || pSorter->pMerger );






                                    {
      int res = 0;
      assert( pSorter->pMerger!=0 );
      assert( pSorter->pMerger->pTask==(&pSorter->aTask[0]) );
      rc = vdbeMergeEngineStep(pSorter->pMerger, &res);
      if( rc==SQLITE_OK && res ) rc = SQLITE_DONE;
    }
  }else{
    SorterRecord *pFree = pSorter->list.pList;
    pSorter->list.pList = pFree->u.pNext;
    pFree->u.pNext = 0;
    if( pSorter->list.aMemory==0 ) vdbeSorterRecordFree(db, pFree);
    rc = pSorter->list.pList ? SQLITE_OK : SQLITE_DONE;
  }
  return rc;
}
