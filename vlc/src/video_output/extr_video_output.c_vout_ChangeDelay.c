
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_5__ {int display; int control; int delay; int clock; int dummy; } ;
typedef TYPE_2__ vout_thread_sys_t ;
typedef int vlc_tick_t ;


 int assert (int) ;
 int vlc_clock_SetDelay (int ,int ) ;
 int vout_control_Hold (int *) ;
 int vout_control_Release (int *) ;

void vout_ChangeDelay(vout_thread_t *vout, vlc_tick_t delay)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);
    assert(sys->display);

    vout_control_Hold(&sys->control);
    vlc_clock_SetDelay(sys->clock, delay);
    sys->delay = delay;
    vout_control_Release(&sys->control);
}
