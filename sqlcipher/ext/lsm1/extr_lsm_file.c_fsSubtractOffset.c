
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_7__ {int pCompress; } ;
typedef int Segment ;
typedef TYPE_1__ FileSystem ;


 int LSM_OK ;
 int assert (int ) ;
 int fsBlockPrev (TYPE_1__*,int *,int ,int*) ;
 int fsFirstPageOnBlock (TYPE_1__*,int ) ;
 int fsLastPageOnBlock (TYPE_1__*,int) ;
 int fsPageToBlock (TYPE_1__*,int) ;

__attribute__((used)) static int fsSubtractOffset(
  FileSystem *pFS,
  Segment *pSeg,
  i64 iOff,
  int iSub,
  i64 *piRes
){
  i64 iStart;
  int iBlk = 0;
  int rc;

  assert( pFS->pCompress );

  iStart = fsFirstPageOnBlock(pFS, fsPageToBlock(pFS, iOff));
  if( (iOff-iSub)>=iStart ){
    *piRes = (iOff-iSub);
    return LSM_OK;
  }

  rc = fsBlockPrev(pFS, pSeg, fsPageToBlock(pFS, iOff), &iBlk);
  *piRes = fsLastPageOnBlock(pFS, iBlk) - iSub + (iOff - iStart + 1);
  return rc;
}
