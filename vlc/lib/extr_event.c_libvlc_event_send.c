
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int p_obj; } ;
typedef TYPE_1__ libvlc_event_t ;
struct TYPE_9__ {int lock; int listeners; int p_obj; } ;
typedef TYPE_2__ libvlc_event_manager_t ;
struct TYPE_10__ {scalar_t__ event_type; int p_user_data; int (* pf_callback ) (TYPE_1__*,int ) ;} ;
typedef TYPE_3__ libvlc_event_listener_t ;


 int stub1 (TYPE_1__*,int ) ;
 size_t vlc_array_count (int *) ;
 TYPE_3__* vlc_array_item_at_index (int *,size_t) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void libvlc_event_send( libvlc_event_manager_t * p_em,
                        libvlc_event_t * p_event )
{

    p_event->p_obj = p_em->p_obj;

    vlc_mutex_lock(&p_em->lock);
    for (size_t i = 0; i < vlc_array_count(&p_em->listeners); i++)
    {
        libvlc_event_listener_t *listener;

        listener = vlc_array_item_at_index(&p_em->listeners, i);
        if (listener->event_type == p_event->type)
            listener->pf_callback(p_event, listener->p_user_data);
    }
    vlc_mutex_unlock(&p_em->lock);
}
