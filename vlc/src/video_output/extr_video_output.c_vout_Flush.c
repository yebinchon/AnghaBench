
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_6__ {int display; int control; int dummy; } ;
typedef TYPE_2__ vout_thread_sys_t ;
typedef int vlc_tick_t ;


 int assert (int) ;
 int vout_FlushUnlocked (TYPE_1__*,int,int ) ;
 int vout_control_Hold (int *) ;
 int vout_control_Release (int *) ;

void vout_Flush(vout_thread_t *vout, vlc_tick_t date)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);
    assert(sys->display);

    vout_control_Hold(&sys->control);
    vout_FlushUnlocked(vout, 0, date);
    vout_control_Release(&sys->control);
}
