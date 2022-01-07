
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ libvlc_event_type_t ;
struct TYPE_6__ {int lock; int listeners; } ;
typedef TYPE_1__ libvlc_event_manager_t ;
struct TYPE_7__ {scalar_t__ event_type; scalar_t__ pf_callback; void* p_user_data; } ;
typedef TYPE_2__ libvlc_event_listener_t ;
typedef scalar_t__ libvlc_callback_t ;


 int abort () ;
 int free (TYPE_2__*) ;
 size_t vlc_array_count (int *) ;
 TYPE_2__* vlc_array_item_at_index (int *,size_t) ;
 int vlc_array_remove (int *,size_t) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void libvlc_event_detach(libvlc_event_manager_t *em, libvlc_event_type_t type,
                         libvlc_callback_t callback, void *opaque)
{
    vlc_mutex_lock(&em->lock);
    for (size_t i = 0; i < vlc_array_count(&em->listeners); i++)
    {
         libvlc_event_listener_t *listener;

         listener = vlc_array_item_at_index(&em->listeners, i);

         if (listener->event_type == type
          && listener->pf_callback == callback
          && listener->p_user_data == opaque)
         {
             vlc_array_remove(&em->listeners, i);
             vlc_mutex_unlock(&em->lock);
             free(listener);
             return;
         }
    }
    abort();
}
