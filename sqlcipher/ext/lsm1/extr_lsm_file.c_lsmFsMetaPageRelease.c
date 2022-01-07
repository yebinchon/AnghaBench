
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_7__ {scalar_t__ nMapLimit; int nMetaRwSize; int pEnv; int fdDb; int nMetasize; } ;
struct TYPE_6__ {int iPg; struct TYPE_6__* aData; scalar_t__ bWrite; TYPE_2__* pFS; } ;
typedef TYPE_1__ MetaPage ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int lsmEnvWrite (int ,int ,int ,TYPE_1__*,int) ;
 int lsmFree (int ,TYPE_1__*) ;

int lsmFsMetaPageRelease(MetaPage *pPg){
  int rc = LSM_OK;
  if( pPg ){
    FileSystem *pFS = pPg->pFS;

    if( pFS->nMapLimit==0 ){
      if( pPg->bWrite ){
        i64 iOff = (pPg->iPg==2 ? pFS->nMetasize : 0);
        int nWrite = pFS->nMetaRwSize;
        rc = lsmEnvWrite(pFS->pEnv, pFS->fdDb, iOff, pPg->aData, nWrite);
      }
      lsmFree(pFS->pEnv, pPg->aData);
    }

    lsmFree(pFS->pEnv, pPg);
  }
  return rc;
}
