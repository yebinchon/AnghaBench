
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int listeners; int lock; } ;
typedef TYPE_1__ libvlc_event_manager_t ;


 int free (int ) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 int vlc_array_item_at_index (int *,size_t) ;
 int vlc_mutex_destroy (int *) ;

void libvlc_event_manager_destroy(libvlc_event_manager_t *em)
{
    vlc_mutex_destroy(&em->lock);

    for (size_t i = 0; i < vlc_array_count(&em->listeners); i++)
        free(vlc_array_item_at_index(&em->listeners, i));

    vlc_array_clear(&em->listeners);
}
