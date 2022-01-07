
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nHier; scalar_t__* apHier; } ;
struct TYPE_7__ {TYPE_2__ hier; TYPE_1__* pDb; scalar_t__ pPage; } ;
struct TYPE_5__ {int pEnv; } ;
typedef TYPE_3__ MergeWorker ;


 int lsmFree (int ,scalar_t__*) ;
 int lsmFsPageRelease (scalar_t__) ;

__attribute__((used)) static void mergeWorkerReleaseAll(MergeWorker *pMW){
  int i;
  lsmFsPageRelease(pMW->pPage);
  pMW->pPage = 0;

  for(i=0; i<pMW->hier.nHier; i++){
    lsmFsPageRelease(pMW->hier.apHier[i]);
    pMW->hier.apHier[i] = 0;
  }
  lsmFree(pMW->pDb->pEnv, pMW->hier.apHier);
  pMW->hier.apHier = 0;
  pMW->hier.nHier = 0;
}
