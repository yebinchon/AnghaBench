
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int abort; int lock; int cond; } ;
typedef TYPE_1__ vlc_clock_main_t ;


 int vlc_cond_broadcast (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_clock_main_Abort(vlc_clock_main_t *main_clock)
{
    vlc_mutex_lock(&main_clock->lock);
    main_clock->abort = 1;
    vlc_cond_broadcast(&main_clock->cond);

    vlc_mutex_unlock(&main_clock->lock);
}
