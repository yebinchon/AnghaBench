
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int lock; void* p_ext_data; int pf_ext_update; } ;
typedef TYPE_1__ vlc_dialog_provider ;
typedef int vlc_dialog_ext_update_cb ;


 int assert (int ) ;
 TYPE_1__* get_dialog_provider (int *,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_dialog_provider_set_ext_callback(vlc_object_t *p_obj,
                                     vlc_dialog_ext_update_cb pf_update,
                                     void *p_data)
{
    assert(p_obj != ((void*)0));
    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 0);

    vlc_mutex_lock(&p_provider->lock);

    p_provider->pf_ext_update = pf_update;
    p_provider->p_ext_data = p_data;

    vlc_mutex_unlock(&p_provider->lock);
}
