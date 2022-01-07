
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lost; int displayed; } ;
typedef TYPE_1__ vout_statistic_t ;


 unsigned int atomic_exchange_explicit (int *,int ,int ) ;
 int memory_order_relaxed ;

__attribute__((used)) static inline void vout_statistic_GetReset(vout_statistic_t *stat,
                                           unsigned *restrict displayed,
                                           unsigned *restrict lost)
{
    *displayed = atomic_exchange_explicit(&stat->displayed, 0,
                                          memory_order_relaxed);
    *lost = atomic_exchange_explicit(&stat->lost, 0, memory_order_relaxed);
}
