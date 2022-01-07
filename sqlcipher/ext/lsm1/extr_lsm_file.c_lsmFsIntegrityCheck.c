
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {int pEnv; TYPE_2__* pWorker; int * pFS; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_12__ {scalar_t__* aUsed; int nBlock; } ;
struct TYPE_11__ {scalar_t__* aEntry; int member_2; int member_1; int member_0; } ;
struct TYPE_10__ {int nRight; int * aRhs; int lhs; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {int nBlock; TYPE_3__* pLevel; } ;
typedef TYPE_2__ Snapshot ;
typedef TYPE_3__ Level ;
typedef TYPE_4__ Freelist ;
typedef int FileSystem ;
typedef TYPE_5__ CheckFreelistCtx ;


 int LSM_OK ;
 int assert (int) ;
 int checkBlocks (int *,int *,int,int,scalar_t__*) ;
 int checkFreelistCb ;
 int lsmFree (int ,scalar_t__*) ;
 scalar_t__* lsmMallocZero (int ,int) ;
 int lsmWalkFreelist (TYPE_1__*,int ,int ,void*) ;
 int printf (char*,int) ;

int lsmFsIntegrityCheck(lsm_db *pDb){
  CheckFreelistCtx ctx;
  FileSystem *pFS = pDb->pFS;
  int i;
  int rc;
  Freelist freelist = {0, 0, 0};
  u8 *aUsed;
  Level *pLevel;
  Snapshot *pWorker = pDb->pWorker;
  int nBlock = pWorker->nBlock;







  aUsed = lsmMallocZero(pDb->pEnv, nBlock);
  if( aUsed==0 ){




    return 1;
  }

  for(pLevel=pWorker->pLevel; pLevel; pLevel=pLevel->pNext){
    int j;
    checkBlocks(pFS, &pLevel->lhs, (pLevel->nRight!=0), nBlock, aUsed);
    for(j=0; j<pLevel->nRight; j++){
      checkBlocks(pFS, &pLevel->aRhs[j], 0, nBlock, aUsed);
    }
  }


  ctx.aUsed = aUsed;
  ctx.nBlock = nBlock;
  rc = lsmWalkFreelist(pDb, 0, checkFreelistCb, (void *)&ctx);

  if( rc==LSM_OK ){
    for(i=0; i<nBlock; i++) assert( aUsed[i]!=0 );
  }

  lsmFree(pDb->pEnv, aUsed);
  lsmFree(pDb->pEnv, freelist.aEntry);

  return 1;
}
