
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int lock; int input_dejitter; } ;
typedef TYPE_1__ vlc_clock_main_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_clock_main_SetInputDejitter(vlc_clock_main_t *main_clock,
                                     vlc_tick_t delay)
{
    vlc_mutex_lock(&main_clock->lock);
    main_clock->input_dejitter = delay;
    vlc_mutex_unlock(&main_clock->lock);
}
