
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int displayed; } ;
typedef TYPE_1__ vout_statistic_t ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int memory_order_relaxed ;

__attribute__((used)) static inline void vout_statistic_AddDisplayed(vout_statistic_t *stat,
                                               int displayed)
{
    atomic_fetch_add_explicit(&stat->displayed, displayed,
                              memory_order_relaxed);
}
