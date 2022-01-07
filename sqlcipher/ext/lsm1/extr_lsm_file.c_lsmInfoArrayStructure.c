
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int pEnv; int * pFS; int * pWorker; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_13__ {char* z; } ;
struct TYPE_12__ {int iFirst; int iLastPg; } ;
typedef int Snapshot ;
typedef TYPE_2__ Segment ;
typedef TYPE_3__ LsmString ;
typedef int LsmPgno ;
typedef int FileSystem ;


 int LSM_BUSY ;
 int LSM_ERROR ;
 int LSM_OK ;
 TYPE_2__* findSegment (int *,int ) ;
 int fsBlockNext (int *,TYPE_2__*,int,int*) ;
 int fsFirstPageOnBlock (int *,int) ;
 int fsLastPageOnBlock (int *,int) ;
 int fsPageToBlock (int *,int) ;
 int lsmBeginWork (TYPE_1__*) ;
 int lsmFinishWork (TYPE_1__*,int ,int*) ;
 int lsmStringAppendf (TYPE_3__*,char*,int) ;
 int lsmStringInit (TYPE_3__*,int ) ;

int lsmInfoArrayStructure(
  lsm_db *pDb,
  int bBlock,
  LsmPgno iFirst,
  char **pzOut
){
  int rc = LSM_OK;
  Snapshot *pWorker;
  Segment *pArray = 0;
  int bUnlock = 0;

  *pzOut = 0;
  if( iFirst==0 ) return LSM_ERROR;


  pWorker = pDb->pWorker;
  if( !pWorker ){
    rc = lsmBeginWork(pDb);
    if( rc!=LSM_OK ) return rc;
    pWorker = pDb->pWorker;
    bUnlock = 1;
  }


  pArray = findSegment(pWorker, iFirst);

  if( pArray==0 ){

    rc = LSM_ERROR;
  }else{
    FileSystem *pFS = pDb->pFS;
    LsmString str;
    int iBlk;
    int iLastBlk;

    iBlk = fsPageToBlock(pFS, pArray->iFirst);
    iLastBlk = fsPageToBlock(pFS, pArray->iLastPg);

    lsmStringInit(&str, pDb->pEnv);
    if( bBlock ){
      lsmStringAppendf(&str, "%d", iBlk);
      while( iBlk!=iLastBlk ){
        fsBlockNext(pFS, pArray, iBlk, &iBlk);
        lsmStringAppendf(&str, " %d", iBlk);
      }
    }else{
      lsmStringAppendf(&str, "%d", pArray->iFirst);
      while( iBlk!=iLastBlk ){
        lsmStringAppendf(&str, " %d", fsLastPageOnBlock(pFS, iBlk));
        fsBlockNext(pFS, pArray, iBlk, &iBlk);
        lsmStringAppendf(&str, " %d", fsFirstPageOnBlock(pFS, iBlk));
      }
      lsmStringAppendf(&str, " %d", pArray->iLastPg);
    }

    *pzOut = str.z;
  }

  if( bUnlock ){
    int rcwork = LSM_BUSY;
    lsmFinishWork(pDb, 0, &rcwork);
  }
  return rc;
}
