
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_clock_t ;
struct TYPE_4__ {int lock; int rc; int * master; } ;
typedef TYPE_1__ vlc_clock_main_t ;
struct vlc_clock_cbs {int dummy; } ;


 int * vlc_clock_main_Create (TYPE_1__*,int ,struct vlc_clock_cbs const*,void*) ;
 int vlc_clock_master_reset (int *) ;
 int vlc_clock_set_master_callbacks (int *) ;
 int vlc_clock_set_slave_callbacks (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_clock_t *vlc_clock_main_CreateMaster(vlc_clock_main_t *main_clock,
                                         const struct vlc_clock_cbs *cbs,
                                         void *cbs_data)
{

    vlc_clock_t *clock = vlc_clock_main_Create(main_clock, 0, cbs, cbs_data);
    if (!clock)
        return ((void*)0);

    vlc_mutex_lock(&main_clock->lock);
    if (main_clock->master != ((void*)0))
    {
        vlc_clock_master_reset(main_clock->master);
        vlc_clock_set_slave_callbacks(main_clock->master);
    }
    vlc_clock_set_master_callbacks(clock);
    main_clock->master = clock;
    main_clock->rc++;
    vlc_mutex_unlock(&main_clock->lock);

    return clock;
}
