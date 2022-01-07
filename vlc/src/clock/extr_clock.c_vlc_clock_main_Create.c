
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int priority; void* cbs_data; struct vlc_clock_cbs const* cbs; scalar_t__ delay; int * owner; } ;
typedef TYPE_1__ vlc_clock_t ;
typedef int vlc_clock_main_t ;
struct vlc_clock_cbs {scalar_t__ on_update; } ;


 int assert (int) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static vlc_clock_t *vlc_clock_main_Create(vlc_clock_main_t *main_clock,
                                          unsigned priority,
                                          const struct vlc_clock_cbs *cbs,
                                          void *cbs_data)
{
    vlc_clock_t *clock = malloc(sizeof(vlc_clock_t));
    if (clock == ((void*)0))
        return ((void*)0);

    clock->owner = main_clock;
    clock->delay = 0;
    clock->cbs = cbs;
    clock->cbs_data = cbs_data;
    clock->priority = priority;
    assert(!cbs || cbs->on_update);

    return clock;
}
