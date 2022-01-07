
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vlc_timer_t ;
struct TYPE_4__ {int lock; int reschedule; int thread; } ;


 int free (TYPE_1__*) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;

void vlc_timer_destroy (vlc_timer_t timer)
{
    vlc_cancel (timer->thread);
    vlc_join (timer->thread, ((void*)0));
    vlc_cond_destroy (&timer->reschedule);
    vlc_mutex_destroy (&timer->lock);
    free (timer);
}
