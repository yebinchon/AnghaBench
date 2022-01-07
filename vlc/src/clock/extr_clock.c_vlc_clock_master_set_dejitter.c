
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* owner; } ;
typedef TYPE_1__ vlc_clock_t ;
struct TYPE_5__ {int lock; int output_dejitter; } ;
typedef TYPE_2__ vlc_clock_main_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void vlc_clock_master_set_dejitter(vlc_clock_t *clock, vlc_tick_t delay)
{
    vlc_clock_main_t *main_clock = clock->owner;

    vlc_mutex_lock(&main_clock->lock);
    main_clock->output_dejitter = delay;
    vlc_mutex_unlock(&main_clock->lock);
}
