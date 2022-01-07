
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_6__ {scalar_t__ (* to_system_locked ) (TYPE_1__*,scalar_t__,scalar_t__,double) ;TYPE_2__* owner; } ;
typedef TYPE_1__ vlc_clock_t ;
struct TYPE_7__ {int lock; } ;
typedef TYPE_2__ vlc_clock_main_t ;


 scalar_t__ INT64_MAX ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__,scalar_t__,double) ;
 int vlc_clock_on_update (TYPE_1__*,scalar_t__,scalar_t__,double,unsigned int,unsigned int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static vlc_tick_t vlc_clock_slave_update(vlc_clock_t *clock,
                                         vlc_tick_t system_now,
                                         vlc_tick_t ts, double rate,
                                         unsigned frame_rate,
                                         unsigned frame_rate_base)
{
    vlc_clock_main_t *main_clock = clock->owner;
    vlc_mutex_lock(&main_clock->lock);



    vlc_tick_t computed = system_now == INT64_MAX ? INT64_MAX
                        : clock->to_system_locked(clock, system_now, ts, rate);

    vlc_mutex_unlock(&main_clock->lock);

    vlc_clock_on_update(clock, computed, ts, rate, frame_rate, frame_rate_base);
    return computed != INT64_MAX ? computed - system_now : INT64_MAX;
}
