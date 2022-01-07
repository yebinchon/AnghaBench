
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ i64 ;
typedef int aPrev ;
struct TYPE_7__ {scalar_t__ nMapLimit; scalar_t__ pCompress; int fdDb; int pEnv; } ;
struct TYPE_6__ {int * pRedirect; } ;
typedef TYPE_1__ Segment ;
typedef int Redirect ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int assert (int) ;
 scalar_t__ fsFirstPageOnBlock (TYPE_2__*,int) ;
 int fsRedirectBlock (int *,int) ;
 int lsmEnvRead (int ,int ,scalar_t__,int *,int) ;
 scalar_t__ lsmGetU32 (int *) ;

__attribute__((used)) static int fsBlockPrev(
  FileSystem *pFS,
  Segment *pSeg,
  int iBlock,
  int *piPrev
){
  int rc = LSM_OK;

  assert( pFS->nMapLimit==0 || pFS->pCompress==0 );
  assert( iBlock>0 );

  if( pFS->pCompress ){
    i64 iOff = fsFirstPageOnBlock(pFS, iBlock) - 4;
    u8 aPrev[4];
    rc = lsmEnvRead(pFS->pEnv, pFS->fdDb, iOff, aPrev, sizeof(aPrev));
    if( rc==LSM_OK ){
      Redirect *pRedir = (pSeg ? pSeg->pRedirect : 0);
      *piPrev = fsRedirectBlock(pRedir, (int)lsmGetU32(aPrev));
    }
  }else{
    assert( 0 );
  }
  return rc;
}
