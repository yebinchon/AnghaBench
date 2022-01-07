
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int iPg; int bWrite; TYPE_3__* pFS; struct TYPE_12__* aData; } ;
typedef TYPE_1__ u8 ;
typedef int i64 ;
struct TYPE_13__ {int nMetasize; scalar_t__ nMapLimit; int pEnv; int nMetaRwSize; int fdDb; scalar_t__ pMap; } ;
typedef int Page ;
typedef TYPE_1__ MetaPage ;
typedef TYPE_3__ FileSystem ;


 int LSM_OK ;
 int assert (int) ;
 int fsGrowMapping (TYPE_3__*,int,int*) ;
 int lsmEnvRead (int ,int ,int,TYPE_1__*,int ) ;
 int lsmFree (int ,TYPE_1__*) ;
 TYPE_1__* lsmMallocRc (int ,int,int*) ;
 TYPE_1__* lsmMallocZeroRc (int ,int,int*) ;
 int memset (TYPE_1__*,int,int) ;

int lsmFsMetaPageGet(
  FileSystem *pFS,
  int bWrite,
  int iPg,
  MetaPage **ppPg
){
  int rc = LSM_OK;
  MetaPage *pPg;
  assert( iPg==1 || iPg==2 );

  pPg = lsmMallocZeroRc(pFS->pEnv, sizeof(Page), &rc);

  if( pPg ){
    i64 iOff = (iPg-1) * pFS->nMetasize;
    if( pFS->nMapLimit>0 ){
      fsGrowMapping(pFS, 2*pFS->nMetasize, &rc);
      pPg->aData = (u8 *)(pFS->pMap) + iOff;
    }else{
      pPg->aData = lsmMallocRc(pFS->pEnv, pFS->nMetasize, &rc);
      if( rc==LSM_OK && bWrite==0 ){
        rc = lsmEnvRead(
            pFS->pEnv, pFS->fdDb, iOff, pPg->aData, pFS->nMetaRwSize
        );
      }






      else if( rc==LSM_OK ){
        memset( pPg->aData, 0x77, pFS->nMetasize );
      }

    }

    if( rc!=LSM_OK ){
      if( pFS->nMapLimit==0 ) lsmFree(pFS->pEnv, pPg->aData);
      lsmFree(pFS->pEnv, pPg);
      pPg = 0;
    }else{
      pPg->iPg = iPg;
      pPg->bWrite = bWrite;
      pPg->pFS = pFS;
    }
  }

  *ppPg = pPg;
  return rc;
}
