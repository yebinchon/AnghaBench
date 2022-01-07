
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_4__ {int iPg; struct TYPE_4__* aPg; int blob; int pPage; int pFS; } ;
typedef TYPE_1__ BtreeCursor ;


 int lsmFree (int *,TYPE_1__*) ;
 int * lsmFsEnv (int ) ;
 int lsmFsPageRelease (int ) ;
 int sortedBlobFree (int *) ;

__attribute__((used)) static void btreeCursorFree(BtreeCursor *pCsr){
  if( pCsr ){
    int i;
    lsm_env *pEnv = lsmFsEnv(pCsr->pFS);
    for(i=0; i<=pCsr->iPg; i++){
      lsmFsPageRelease(pCsr->aPg[i].pPage);
    }
    sortedBlobFree(&pCsr->blob);
    lsmFree(pEnv, pCsr->aPg);
    lsmFree(pEnv, pCsr);
  }
}
