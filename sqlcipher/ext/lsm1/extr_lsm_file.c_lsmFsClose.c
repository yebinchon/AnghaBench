
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_5__ {scalar_t__ nOut; int flags; struct TYPE_5__* aOBuffer; struct TYPE_5__* aIBuffer; struct TYPE_5__* apHash; struct TYPE_5__* pLsmFile; scalar_t__ fdLog; int * pEnv; scalar_t__ fdDb; struct TYPE_5__* aData; struct TYPE_5__* pFreeNext; struct TYPE_5__* pFree; struct TYPE_5__* pLruNext; struct TYPE_5__* pLruFirst; } ;
typedef TYPE_1__ Page ;
typedef TYPE_1__ FileSystem ;


 int PAGE_FREE ;
 int assert (int) ;
 int lsmEnvClose (int *,scalar_t__) ;
 int lsmFree (int *,TYPE_1__*) ;

void lsmFsClose(FileSystem *pFS){
  if( pFS ){
    Page *pPg;
    lsm_env *pEnv = pFS->pEnv;

    assert( pFS->nOut==0 );
    pPg = pFS->pLruFirst;
    while( pPg ){
      Page *pNext = pPg->pLruNext;
      if( pPg->flags & PAGE_FREE ) lsmFree(pEnv, pPg->aData);
      lsmFree(pEnv, pPg);
      pPg = pNext;
    }

    pPg = pFS->pFree;
    while( pPg ){
      Page *pNext = pPg->pFreeNext;
      if( pPg->flags & PAGE_FREE ) lsmFree(pEnv, pPg->aData);
      lsmFree(pEnv, pPg);
      pPg = pNext;
    }

    if( pFS->fdDb ) lsmEnvClose(pFS->pEnv, pFS->fdDb );
    if( pFS->fdLog ) lsmEnvClose(pFS->pEnv, pFS->fdLog );
    lsmFree(pEnv, pFS->pLsmFile);
    lsmFree(pEnv, pFS->apHash);
    lsmFree(pEnv, pFS->aIBuffer);
    lsmFree(pEnv, pFS->aOBuffer);
    lsmFree(pEnv, pFS);
  }
}
