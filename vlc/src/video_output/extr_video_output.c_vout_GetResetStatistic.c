
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_4__ {int statistic; int dummy; } ;


 int assert (int) ;
 int vout_statistic_GetReset (int *,unsigned int*,unsigned int*) ;

void vout_GetResetStatistic(vout_thread_t *vout, unsigned *restrict displayed,
                            unsigned *restrict lost)
{
    assert(!vout->p->dummy);
    vout_statistic_GetReset( &vout->p->statistic, displayed, lost );
}
