
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_5__ {int (* to_system_locked ) (TYPE_1__*,int ,int ,double) ;TYPE_2__* owner; } ;
typedef TYPE_1__ vlc_clock_t ;
struct TYPE_6__ {int lock; } ;
typedef TYPE_2__ vlc_clock_main_t ;


 int stub1 (TYPE_1__*,int ,int ,double) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_tick_t vlc_clock_ConvertToSystem(vlc_clock_t *clock, vlc_tick_t system_now,
                                     vlc_tick_t ts, double rate)
{
    vlc_clock_main_t *main_clock = clock->owner;
    vlc_mutex_lock(&main_clock->lock);
    vlc_tick_t system = clock->to_system_locked(clock, system_now, ts, rate);
    vlc_mutex_unlock(&main_clock->lock);
    return system;
}
