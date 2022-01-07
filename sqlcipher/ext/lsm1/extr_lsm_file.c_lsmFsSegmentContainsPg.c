
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iLastPg; int iFirst; int * pRedirect; } ;
typedef TYPE_1__ Segment ;
typedef int Redirect ;
typedef int LsmPgno ;
typedef int FileSystem ;


 int LSM_OK ;
 int fsBlockNext (int *,TYPE_1__*,int,int*) ;
 int fsPageToBlock (int *,int ) ;
 int fsRedirectBlock (int *,int) ;

int lsmFsSegmentContainsPg(
  FileSystem *pFS,
  Segment *pSeg,
  LsmPgno iPg,
  int *pbRes
){
  Redirect *pRedir = pSeg->pRedirect;
  int rc = LSM_OK;
  int iBlk;
  int iLastBlk;
  int iPgBlock;

  iPgBlock = fsPageToBlock(pFS, pSeg->iFirst);
  iBlk = fsRedirectBlock(pRedir, fsPageToBlock(pFS, pSeg->iFirst));
  iLastBlk = fsRedirectBlock(pRedir, fsPageToBlock(pFS, pSeg->iLastPg));

  while( iBlk!=iLastBlk && iBlk!=iPgBlock && rc==LSM_OK ){
    rc = fsBlockNext(pFS, pSeg, iBlk, &iBlk);
  }

  *pbRes = (iBlk==iPgBlock);
  return rc;
}
