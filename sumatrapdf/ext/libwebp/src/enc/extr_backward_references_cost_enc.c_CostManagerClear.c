
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * recycled_intervals_; int * head_; int cache_intervals_; int costs_; } ;
typedef TYPE_1__ CostManager ;


 int CostManagerInitFreeList (TYPE_1__* const) ;
 int DeleteIntervalList (TYPE_1__* const,int *) ;
 int WebPSafeFree (int ) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void CostManagerClear(CostManager* const manager) {
  if (manager == ((void*)0)) return;

  WebPSafeFree(manager->costs_);
  WebPSafeFree(manager->cache_intervals_);


  DeleteIntervalList(manager, manager->head_);
  manager->head_ = ((void*)0);
  DeleteIntervalList(manager, manager->recycled_intervals_);
  manager->recycled_intervals_ = ((void*)0);


  memset(manager, 0, sizeof(*manager));
  CostManagerInitFreeList(manager);
}
