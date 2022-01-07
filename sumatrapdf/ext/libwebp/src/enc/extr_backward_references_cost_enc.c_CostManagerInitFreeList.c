
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * intervals_; int * free_intervals_; } ;
typedef TYPE_1__ CostManager ;


 int COST_MANAGER_MAX_FREE_LIST ;
 int CostIntervalAddToFreeList (TYPE_1__* const,int *) ;

__attribute__((used)) static void CostManagerInitFreeList(CostManager* const manager) {
  int i;
  manager->free_intervals_ = ((void*)0);
  for (i = 0; i < COST_MANAGER_MAX_FREE_LIST; ++i) {
    CostIntervalAddToFreeList(manager, &manager->intervals_[i]);
  }
}
