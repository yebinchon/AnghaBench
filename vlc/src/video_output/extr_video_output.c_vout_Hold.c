
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_6__ {int refs; } ;
typedef TYPE_2__ vout_thread_sys_t ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int memory_order_relaxed ;

vout_thread_t *vout_Hold(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;

    atomic_fetch_add_explicit(&sys->refs, 1, memory_order_relaxed);
    return vout;
}
