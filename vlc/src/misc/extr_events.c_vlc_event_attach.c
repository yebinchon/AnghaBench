
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t vlc_event_type_t ;
struct TYPE_7__ {int lock; TYPE_2__* events; } ;
typedef TYPE_1__ vlc_event_manager_t ;
struct TYPE_8__ {int listeners; } ;
typedef TYPE_2__ vlc_event_listeners_group_t ;
struct TYPE_9__ {int pf_callback; void* p_user_data; } ;
typedef TYPE_3__ vlc_event_listener_t ;
typedef int vlc_event_callback_t ;


 int ARRAY_APPEND (int ,TYPE_3__*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_3__* malloc (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int vlc_event_attach( vlc_event_manager_t * p_em,
                      vlc_event_type_t event_type,
                      vlc_event_callback_t pf_callback,
                      void *p_user_data )
{
    vlc_event_listener_t * listener;
    vlc_event_listeners_group_t *slot = &p_em->events[event_type];

    listener = malloc(sizeof(vlc_event_listener_t));
    if( !listener )
        return VLC_ENOMEM;

    listener->p_user_data = p_user_data;
    listener->pf_callback = pf_callback;

    vlc_mutex_lock( &p_em->lock );
    ARRAY_APPEND( slot->listeners, listener );
    vlc_mutex_unlock( &p_em->lock );
    return VLC_SUCCESS;
}
