
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int first_pcr; } ;
typedef TYPE_1__ vlc_clock_main_t ;


 int VLC_TICK_INVALID ;
 int clock_point_Create (int ,int ) ;
 int vlc_clock_main_reset (TYPE_1__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_clock_main_Reset(vlc_clock_main_t *main_clock)
{
    vlc_mutex_lock(&main_clock->lock);
    vlc_clock_main_reset(main_clock);
    main_clock->first_pcr =
        clock_point_Create(VLC_TICK_INVALID, VLC_TICK_INVALID);
    vlc_mutex_unlock(&main_clock->lock);
}
