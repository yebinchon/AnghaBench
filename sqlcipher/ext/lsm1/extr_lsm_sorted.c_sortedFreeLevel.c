
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_4__ {struct TYPE_4__* aRhs; struct TYPE_4__* pMerge; struct TYPE_4__* pSplitKey; } ;
typedef TYPE_1__ Level ;


 int lsmFree (int *,TYPE_1__*) ;

__attribute__((used)) static void sortedFreeLevel(lsm_env *pEnv, Level *p){
  if( p ){
    lsmFree(pEnv, p->pSplitKey);
    lsmFree(pEnv, p->pMerge);
    lsmFree(pEnv, p->aRhs);
    lsmFree(pEnv, p);
  }
}
