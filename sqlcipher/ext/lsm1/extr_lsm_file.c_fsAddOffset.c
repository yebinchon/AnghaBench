
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_7__ {int pCompress; } ;
typedef int Segment ;
typedef TYPE_1__ FileSystem ;


 int LSM_OK ;
 int assert (int ) ;
 int fsBlockNext (TYPE_1__*,int *,int ,int*) ;
 scalar_t__ fsFirstPageOnBlock (TYPE_1__*,int) ;
 scalar_t__ fsLastPageOnPagesBlock (TYPE_1__*,scalar_t__) ;
 int fsPageToBlock (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int fsAddOffset(
  FileSystem *pFS,
  Segment *pSeg,
  i64 iOff,
  int iAdd,
  i64 *piRes
){
  i64 iEob;
  int iBlk;
  int rc;

  assert( pFS->pCompress );

  iEob = fsLastPageOnPagesBlock(pFS, iOff);
  if( (iOff+iAdd)<=iEob ){
    *piRes = (iOff+iAdd);
    return LSM_OK;
  }

  rc = fsBlockNext(pFS, pSeg, fsPageToBlock(pFS, iOff), &iBlk);
  *piRes = fsFirstPageOnBlock(pFS, iBlk) + iAdd - (iEob - iOff + 1);
  return rc;
}
