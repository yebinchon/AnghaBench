
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int libvlc_event_type_t ;
struct TYPE_7__ {int lock; int listeners; } ;
typedef TYPE_1__ libvlc_event_manager_t ;
struct TYPE_8__ {int pf_callback; void* p_user_data; int event_type; } ;
typedef TYPE_2__ libvlc_event_listener_t ;
typedef int libvlc_callback_t ;


 int ENOMEM ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_array_append (int *,TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int libvlc_event_attach(libvlc_event_manager_t *em, libvlc_event_type_t type,
                        libvlc_callback_t callback, void *opaque)
{
    libvlc_event_listener_t *listener = malloc(sizeof (*listener));
    if (unlikely(listener == ((void*)0)))
        return ENOMEM;

    listener->event_type = type;
    listener->p_user_data = opaque;
    listener->pf_callback = callback;

    int i_ret;
    vlc_mutex_lock(&em->lock);
    if(vlc_array_append(&em->listeners, listener) != 0)
    {
        i_ret = VLC_EGENERIC;
        free(listener);
    }
    else
        i_ret = VLC_SUCCESS;
    vlc_mutex_unlock(&em->lock);
    return i_ret;
}
