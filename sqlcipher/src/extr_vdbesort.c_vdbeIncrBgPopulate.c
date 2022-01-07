
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pTask; int bUseThread; } ;
typedef TYPE_1__ IncrMerger ;


 int assert (int ) ;
 int vdbeIncrPopulateThread ;
 int vdbeSorterCreateThread (int ,int ,void*) ;

__attribute__((used)) static int vdbeIncrBgPopulate(IncrMerger *pIncr){
  void *p = (void*)pIncr;
  assert( pIncr->bUseThread );
  return vdbeSorterCreateThread(pIncr->pTask, vdbeIncrPopulateThread, p);
}
