
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* owner; } ;
typedef TYPE_1__ vlc_clock_t ;
struct TYPE_7__ {int lock; int rc; TYPE_1__* master; } ;
typedef TYPE_2__ vlc_clock_main_t ;


 int free (TYPE_1__*) ;
 int vlc_clock_main_reset (TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_clock_Delete(vlc_clock_t *clock)
{
    vlc_clock_main_t *main_clock = clock->owner;
    vlc_mutex_lock(&main_clock->lock);
    if (clock == main_clock->master)
    {
        vlc_clock_main_reset(main_clock);
        main_clock->master = ((void*)0);
    }
    main_clock->rc--;
    vlc_mutex_unlock(&main_clock->lock);
    free(clock);
}
