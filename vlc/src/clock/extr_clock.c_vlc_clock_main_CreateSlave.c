
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_clock_t ;
struct TYPE_4__ {int lock; int rc; } ;
typedef TYPE_1__ vlc_clock_main_t ;
struct vlc_clock_cbs {int dummy; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;





 int * vlc_clock_main_Create (TYPE_1__*,unsigned int,struct vlc_clock_cbs const*,void*) ;
 int vlc_clock_set_slave_callbacks (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_clock_t *vlc_clock_main_CreateSlave(vlc_clock_main_t *main_clock,
                                        enum es_format_category_e cat,
                                        const struct vlc_clock_cbs *cbs,
                                        void *cbs_data)
{




    unsigned priority;
    switch (cat)
    {
        case 128:
        case 130:
            priority = 1;
            break;
        case 129:
        default:
            priority = 2;
            break;
    }

    vlc_clock_t *clock = vlc_clock_main_Create(main_clock, priority, cbs,
                                               cbs_data);
    if (!clock)
        return ((void*)0);

    vlc_mutex_lock(&main_clock->lock);
    vlc_clock_set_slave_callbacks(clock);
    main_clock->rc++;
    vlc_mutex_unlock(&main_clock->lock);

    return clock;
}
