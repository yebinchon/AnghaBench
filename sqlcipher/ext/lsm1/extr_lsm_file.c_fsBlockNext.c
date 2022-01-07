
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
typedef int aNext ;
struct TYPE_11__ {scalar_t__ nMapLimit; scalar_t__ pCompress; int nBlocksize; int nPagesize; int fdDb; int pEnv; } ;
struct TYPE_10__ {int * aData; } ;
struct TYPE_9__ {int pRedirect; } ;
typedef TYPE_1__ Segment ;
typedef TYPE_2__ Page ;
typedef TYPE_3__ FileSystem ;


 int LSM_OK ;
 int assert (int) ;
 int fsPageGet (TYPE_3__*,int ,int,int ,TYPE_2__**,int ) ;
 int fsRedirectBlock (int ,int) ;
 int lsmEnvRead (int ,int ,int,int *,int) ;
 int lsmFsPageRelease (TYPE_2__*) ;
 int lsmGetU32 (int *) ;

__attribute__((used)) static int fsBlockNext(
  FileSystem *pFS,
  Segment *pSeg,
  int iBlock,
  int *piNext
){
  int rc;
  int iRead;

  if( pSeg ){
    iRead = fsRedirectBlock(pSeg->pRedirect, iBlock);
  }else{
    iRead = iBlock;
  }

  assert( pFS->nMapLimit==0 || pFS->pCompress==0 );
  if( pFS->pCompress ){
    i64 iOff;
    u8 aNext[4];

    iOff = (i64)iRead * pFS->nBlocksize - sizeof(aNext);
    rc = lsmEnvRead(pFS->pEnv, pFS->fdDb, iOff, aNext, sizeof(aNext));
    if( rc==LSM_OK ){
      *piNext = (int)lsmGetU32(aNext);
    }
  }else{
    const int nPagePerBlock = (pFS->nBlocksize / pFS->nPagesize);
    Page *pLast;
    rc = fsPageGet(pFS, 0, iRead*nPagePerBlock, 0, &pLast, 0);
    if( rc==LSM_OK ){
      *piNext = lsmGetU32(&pLast->aData[pFS->nPagesize-4]);
      lsmFsPageRelease(pLast);
    }
  }

  if( pSeg ){
    *piNext = fsRedirectBlock(pSeg->pRedirect, *piNext);
  }
  return rc;
}
