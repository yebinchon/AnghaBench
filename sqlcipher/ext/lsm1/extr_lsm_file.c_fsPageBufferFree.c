
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pFS; struct TYPE_6__* aData; } ;
struct TYPE_5__ {int pEnv; int nCacheAlloc; } ;
typedef TYPE_2__ Page ;


 int lsmFree (int ,TYPE_2__*) ;

__attribute__((used)) static void fsPageBufferFree(Page *pPg){
  pPg->pFS->nCacheAlloc--;
  lsmFree(pPg->pFS->pEnv, pPg->aData);
  lsmFree(pPg->pFS->pEnv, pPg);
}
