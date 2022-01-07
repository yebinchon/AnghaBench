
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
typedef int aSz ;
struct TYPE_5__ {int pCompress; } ;
typedef int Segment ;
typedef int LsmPgno ;
typedef TYPE_1__ FileSystem ;


 int LSM_OK ;
 int assert (int ) ;
 int fsReadData (TYPE_1__*,int *,int ,int*,int) ;
 int fsSubtractOffset (TYPE_1__*,int *,int ,int,int *) ;
 int getRecordSize (int*,int*) ;

__attribute__((used)) static int fsGetPageBefore(
  FileSystem *pFS,
  Segment *pSeg,
  LsmPgno iPg,
  LsmPgno *piPrev
){
  u8 aSz[3];
  int rc;
  i64 iRead;

  assert( pFS->pCompress );

  rc = fsSubtractOffset(pFS, pSeg, iPg, sizeof(aSz), &iRead);
  if( rc==LSM_OK ) rc = fsReadData(pFS, pSeg, iRead, aSz, sizeof(aSz));

  if( rc==LSM_OK ){
    int bFree;
    int nSz;
    if( aSz[2] & 0x80 ){
      nSz = getRecordSize(aSz, &bFree) + sizeof(aSz)*2;
    }else{
      nSz = (int)(aSz[2] & 0x7F);
      bFree = 1;
    }
    rc = fsSubtractOffset(pFS, pSeg, iPg, nSz, piPrev);
  }

  return rc;
}
