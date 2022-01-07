
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int const u8 ;
typedef int aPtr ;
struct TYPE_11__ {int pCompress; int nBlocksize; int fdDb; int pEnv; int pDb; } ;
struct TYPE_10__ {int iLastPg; int iFirst; scalar_t__ pRedirect; } ;
typedef TYPE_1__ Segment ;
typedef int LsmPgno ;
typedef TYPE_2__ FileSystem ;


 int LSM_MIN (int,int) ;
 int LSM_OK ;
 int assert (int) ;
 int findAppendPoint (TYPE_2__*,int ) ;
 int fsBlockNext (TYPE_2__*,int ,int,int*) ;
 int fsFirstPageOnBlock (TYPE_2__*,int) ;
 int fsLastPageOnPagesBlock (TYPE_2__*,int) ;
 int fsPageToBlock (TYPE_2__*,int) ;
 int lsmBlockAllocate (int ,int ,int*) ;
 int lsmEnvWrite (int ,int ,int,int const*,int) ;
 int lsmPutU32 (int const*,int) ;

__attribute__((used)) static LsmPgno fsAppendData(
  FileSystem *pFS,
  Segment *pSeg,
  const u8 *aData,
  int nData,
  int *pRc
){
  LsmPgno iRet = 0;
  int rc = *pRc;
  assert( pFS->pCompress );
  if( rc==LSM_OK ){
    int nRem = 0;
    int nWrite = 0;
    LsmPgno iLastOnBlock;
    LsmPgno iApp = pSeg->iLastPg+1;



    if( iApp==1 ){
      pSeg->iFirst = iApp = findAppendPoint(pFS, 0);
      if( iApp==0 ){
        int iBlk;
        rc = lsmBlockAllocate(pFS->pDb, 0, &iBlk);
        pSeg->iFirst = iApp = fsFirstPageOnBlock(pFS, iBlk);
      }
    }
    iRet = iApp;


    iLastOnBlock = fsLastPageOnPagesBlock(pFS, iApp);
    if( rc==LSM_OK ){
      int nSpace = (int)(iLastOnBlock - iApp + 1);
      nWrite = LSM_MIN(nData, nSpace);
      nRem = nData - nWrite;
      assert( nWrite>=0 );
      if( nWrite!=0 ){
        rc = lsmEnvWrite(pFS->pEnv, pFS->fdDb, iApp, aData, nWrite);
      }
      iApp += nWrite;
    }




    assert( nRem<=0 || (iApp-1)==iLastOnBlock );
    if( rc==LSM_OK && (iApp-1)==iLastOnBlock ){
      u8 aPtr[4];
      int iBlk;

      if( nWrite>0 ){

        rc = lsmBlockAllocate(pFS->pDb, 0, &iBlk);


        if( rc==LSM_OK ){
          assert( iApp==(fsPageToBlock(pFS, iApp)*pFS->nBlocksize)-4 );
          lsmPutU32(aPtr, iBlk);
          rc = lsmEnvWrite(pFS->pEnv, pFS->fdDb, iApp, aPtr, sizeof(aPtr));
        }


        if( rc==LSM_OK ){
          LsmPgno iWrite;
          lsmPutU32(aPtr, fsPageToBlock(pFS, iApp));
          iWrite = fsFirstPageOnBlock(pFS, iBlk);
          rc = lsmEnvWrite(pFS->pEnv, pFS->fdDb, iWrite-4, aPtr, sizeof(aPtr));
          if( nRem>0 ) iApp = iWrite;
        }
      }else{

        assert( nRem>0 );
        assert( pSeg->pRedirect==0 );
        rc = fsBlockNext(pFS, 0, fsPageToBlock(pFS, iApp), &iBlk);
        iRet = iApp = fsFirstPageOnBlock(pFS, iBlk);
      }


      if( rc==LSM_OK && nRem>0 ){
        rc = lsmEnvWrite(pFS->pEnv, pFS->fdDb, iApp, &aData[nWrite], nRem);
        iApp += nRem;
      }
    }

    pSeg->iLastPg = iApp-1;
    *pRc = rc;
  }

  return iRet;
}
