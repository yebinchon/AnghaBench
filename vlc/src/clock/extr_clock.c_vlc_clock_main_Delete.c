
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; int cond; int lock; } ;
typedef TYPE_1__ vlc_clock_main_t ;


 int assert (int) ;
 int free (TYPE_1__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

void vlc_clock_main_Delete(vlc_clock_main_t *main_clock)
{
    vlc_mutex_destroy(&main_clock->lock);
    vlc_cond_destroy(&main_clock->cond);
    assert(main_clock->rc == 1);
    free(main_clock);
}
