
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_21__ {scalar_t__ iStartOff; scalar_t__ bEof; scalar_t__ mxSz; TYPE_6__* pMerger; TYPE_3__* pTask; TYPE_2__* aFile; } ;
struct TYPE_20__ {size_t* aTree; TYPE_3__* pTask; TYPE_5__* aReadr; } ;
struct TYPE_19__ {int nKey; scalar_t__ pFd; int aKey; } ;
struct TYPE_18__ {scalar_t__ iWriteOff; scalar_t__ iBufEnd; } ;
struct TYPE_17__ {TYPE_1__* pSorter; } ;
struct TYPE_16__ {int iEof; int pFd; } ;
struct TYPE_15__ {int pgsz; } ;
typedef TYPE_2__ SorterFile ;
typedef TYPE_3__ SortSubtask ;
typedef TYPE_4__ PmaWriter ;
typedef TYPE_5__ PmaReader ;
typedef TYPE_6__ MergeEngine ;
typedef TYPE_7__ IncrMerger ;


 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ sqlite3VarintLen (int) ;
 int vdbeMergeEngineStep (TYPE_6__*,int*) ;
 int vdbePmaWriteBlob (TYPE_4__*,int ,int) ;
 int vdbePmaWriteVarint (TYPE_4__*,int) ;
 int vdbePmaWriterFinish (TYPE_4__*,int *) ;
 int vdbePmaWriterInit (int ,TYPE_4__*,int ,scalar_t__) ;
 int vdbeSorterPopulateDebug (TYPE_3__*,char*) ;

__attribute__((used)) static int vdbeIncrPopulate(IncrMerger *pIncr){
  int rc = SQLITE_OK;
  int rc2;
  i64 iStart = pIncr->iStartOff;
  SorterFile *pOut = &pIncr->aFile[1];
  SortSubtask *pTask = pIncr->pTask;
  MergeEngine *pMerger = pIncr->pMerger;
  PmaWriter writer;
  assert( pIncr->bEof==0 );

  vdbeSorterPopulateDebug(pTask, "enter");

  vdbePmaWriterInit(pOut->pFd, &writer, pTask->pSorter->pgsz, iStart);
  while( rc==SQLITE_OK ){
    int dummy;
    PmaReader *pReader = &pMerger->aReadr[ pMerger->aTree[1] ];
    int nKey = pReader->nKey;
    i64 iEof = writer.iWriteOff + writer.iBufEnd;



    if( pReader->pFd==0 ) break;
    if( (iEof + nKey + sqlite3VarintLen(nKey))>(iStart + pIncr->mxSz) ) break;


    vdbePmaWriteVarint(&writer, nKey);
    vdbePmaWriteBlob(&writer, pReader->aKey, nKey);
    assert( pIncr->pMerger->pTask==pTask );
    rc = vdbeMergeEngineStep(pIncr->pMerger, &dummy);
  }

  rc2 = vdbePmaWriterFinish(&writer, &pOut->iEof);
  if( rc==SQLITE_OK ) rc = rc2;
  vdbeSorterPopulateDebug(pTask, "exit");
  return rc;
}
