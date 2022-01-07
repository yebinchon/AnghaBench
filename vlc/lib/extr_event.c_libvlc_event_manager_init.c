
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int listeners; void* p_obj; } ;
typedef TYPE_1__ libvlc_event_manager_t ;


 int vlc_array_init (int *) ;
 int vlc_mutex_init_recursive (int *) ;

void libvlc_event_manager_init(libvlc_event_manager_t *em, void *obj)
{
    em->p_obj = obj;
    vlc_array_init(&em->listeners);
    vlc_mutex_init_recursive(&em->lock);
}
