
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * pWorker; int * pFS; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_10__ {scalar_t__ nSize; scalar_t__ iFirst; } ;
typedef int Snapshot ;
typedef TYPE_2__ Segment ;
typedef scalar_t__ LsmPgno ;
typedef int FileSystem ;


 int LSM_OK ;
 int assert (int) ;
 scalar_t__ firstOnBlock (int *,int,scalar_t__*,int) ;
 int fsBlockNext (int *,TYPE_2__*,int,int*) ;
 scalar_t__ fsFirstPageOnBlock (int *,int) ;
 int fsFreeBlock (int *,int *,TYPE_2__*,int) ;
 scalar_t__ fsLastPageOnBlock (int *,int) ;
 scalar_t__ fsPageRedirects (int *,TYPE_2__*,scalar_t__) ;
 int fsPageToBlock (int *,scalar_t__) ;
 scalar_t__ fsSegmentRedirects (int *,TYPE_2__*) ;

void lsmFsGobble(
  lsm_db *pDb,
  Segment *pRun,
  LsmPgno *aPgno,
  int nPgno
){
  int rc = LSM_OK;
  FileSystem *pFS = pDb->pFS;
  Snapshot *pSnapshot = pDb->pWorker;
  int iBlk;

  assert( pRun->nSize>0 );
  assert( 0==fsSegmentRedirects(pFS, pRun) );
  assert( nPgno>0 && 0==fsPageRedirects(pFS, pRun, aPgno[0]) );

  iBlk = fsPageToBlock(pFS, pRun->iFirst);
  pRun->nSize += (int)(pRun->iFirst - fsFirstPageOnBlock(pFS, iBlk));

  while( rc==LSM_OK ){
    int iNext = 0;
    LsmPgno iFirst = firstOnBlock(pFS, iBlk, aPgno, nPgno);
    if( iFirst ){
      pRun->iFirst = iFirst;
      break;
    }
    rc = fsBlockNext(pFS, pRun, iBlk, &iNext);
    if( rc==LSM_OK ) rc = fsFreeBlock(pFS, pSnapshot, pRun, iBlk);
    pRun->nSize -= (int)(
        1 + fsLastPageOnBlock(pFS, iBlk) - fsFirstPageOnBlock(pFS, iBlk)
    );
    iBlk = iNext;
  }

  pRun->nSize -= (int)(pRun->iFirst - fsFirstPageOnBlock(pFS, iBlk));
  assert( pRun->nSize>0 );
}
