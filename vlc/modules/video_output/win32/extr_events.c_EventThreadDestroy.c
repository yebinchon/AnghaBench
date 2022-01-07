
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int wait; } ;
typedef TYPE_1__ event_thread_t ;


 int free (TYPE_1__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

void EventThreadDestroy( event_thread_t *p_event )
{
    vlc_cond_destroy( &p_event->wait );
    vlc_mutex_destroy( &p_event->lock );
    free( p_event );
}
