
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_; } ;
typedef int CostManager ;
typedef TYPE_1__ CostInterval ;


 int CostIntervalIsInFreeList (int * const,TYPE_1__ const*) ;
 int WebPSafeFree (void*) ;

__attribute__((used)) static void DeleteIntervalList(CostManager* const manager,
                               const CostInterval* interval) {
  while (interval != ((void*)0)) {
    const CostInterval* const next = interval->next_;
    if (!CostIntervalIsInFreeList(manager, interval)) {
      WebPSafeFree((void*)interval);
    }
    interval = next;
  }
}
