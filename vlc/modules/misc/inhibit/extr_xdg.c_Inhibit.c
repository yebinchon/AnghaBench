
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {int timer; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 unsigned int VLC_INHIBIT_DISPLAY ;
 int VLC_TICK_FROM_SEC (int) ;
 int VLC_TIMER_DISARM ;
 int vlc_timer_schedule (int ,int,int ,int ) ;

__attribute__((used)) static void Inhibit (vlc_inhibit_t *ih, unsigned mask)
{
    vlc_inhibit_sys_t *sys = ih->p_sys;
    bool suspend = (mask & VLC_INHIBIT_DISPLAY) != 0;
    vlc_tick_t delay = suspend ? VLC_TICK_FROM_SEC(30): VLC_TIMER_DISARM;

    vlc_timer_schedule (sys->timer, 0, delay, delay);
}
