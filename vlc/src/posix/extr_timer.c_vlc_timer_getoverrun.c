
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlc_timer_t ;
struct TYPE_3__ {int overruns; } ;


 int atomic_exchange_explicit (int *,int ,int ) ;
 int memory_order_relaxed ;

unsigned vlc_timer_getoverrun (vlc_timer_t timer)
{
    return atomic_exchange_explicit (&timer->overruns, 0,
                                     memory_order_relaxed);
}
