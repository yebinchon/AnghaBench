
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pCompress; } ;
struct TYPE_7__ {scalar_t__ iLastPg; } ;
typedef TYPE_1__ Segment ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int assert (int ) ;
 int fsAddOffset (TYPE_2__*,TYPE_1__*,scalar_t__,int,scalar_t__*) ;

__attribute__((used)) static int fsNextPageOffset(
  FileSystem *pFS,
  Segment *pSeg,
  LsmPgno iPg,
  int nByte,
  LsmPgno *piNext
){
  LsmPgno iNext;
  int rc;

  assert( pFS->pCompress );

  rc = fsAddOffset(pFS, pSeg, iPg, nByte-1, &iNext);
  if( pSeg && iNext==pSeg->iLastPg ){
    iNext = 0;
  }else if( rc==LSM_OK ){
    rc = fsAddOffset(pFS, pSeg, iNext, 1, &iNext);
  }

  *piNext = iNext;
  return rc;
}
