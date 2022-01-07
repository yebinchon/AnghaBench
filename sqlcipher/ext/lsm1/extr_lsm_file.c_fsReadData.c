
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ i64 ;
struct TYPE_7__ {int fdDb; int pEnv; int pCompress; } ;
typedef int Segment ;
typedef TYPE_1__ FileSystem ;


 scalar_t__ LSM_MIN (scalar_t__,int) ;
 int LSM_OK ;
 int assert (int ) ;
 int fsBlockNext (TYPE_1__*,int *,int ,int*) ;
 scalar_t__ fsFirstPageOnBlock (TYPE_1__*,int) ;
 scalar_t__ fsLastPageOnPagesBlock (TYPE_1__*,scalar_t__) ;
 int fsPageToBlock (TYPE_1__*,scalar_t__) ;
 int lsmEnvRead (int ,int ,scalar_t__,int *,int) ;

__attribute__((used)) static int fsReadData(
  FileSystem *pFS,
  Segment *pSeg,
  i64 iOff,
  u8 *aData,
  int nData
){
  i64 iEob;
  int nRead;
  int rc;

  assert( pFS->pCompress );

  iEob = fsLastPageOnPagesBlock(pFS, iOff) + 1;
  nRead = (int)LSM_MIN(iEob - iOff, nData);

  rc = lsmEnvRead(pFS->pEnv, pFS->fdDb, iOff, aData, nRead);
  if( rc==LSM_OK && nRead!=nData ){
    int iBlk;

    rc = fsBlockNext(pFS, pSeg, fsPageToBlock(pFS, iOff), &iBlk);
    if( rc==LSM_OK ){
      i64 iOff2 = fsFirstPageOnBlock(pFS, iBlk);
      rc = lsmEnvRead(pFS->pEnv, pFS->fdDb, iOff2, &aData[nRead], nData-nRead);
    }
  }

  return rc;
}
