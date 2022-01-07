
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_clock_t ;
struct TYPE_3__ {int lock; int * master; } ;
typedef TYPE_1__ vlc_clock_main_t ;


 int vlc_clock_master_reset (int *) ;
 int vlc_clock_set_master_callbacks (int *) ;
 int vlc_clock_set_slave_callbacks (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_clock_main_SetMaster(vlc_clock_main_t *main_clock, vlc_clock_t *clock)
{
    vlc_mutex_lock(&main_clock->lock);
    if (main_clock->master != ((void*)0))
    {
        vlc_clock_master_reset(main_clock->master);
        vlc_clock_set_slave_callbacks(main_clock->master);
    }
    vlc_clock_set_master_callbacks(clock);
    main_clock->master = clock;
    vlc_mutex_unlock(&main_clock->lock);
}
