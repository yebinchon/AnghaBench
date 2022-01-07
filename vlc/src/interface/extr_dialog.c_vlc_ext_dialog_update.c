
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int lock; int p_ext_data; int (* pf_ext_update ) (int *,int ) ;} ;
typedef TYPE_1__ vlc_dialog_provider ;
typedef int extension_dialog_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 TYPE_1__* get_dialog_provider (int *,int) ;
 int stub1 (int *,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int
vlc_ext_dialog_update(vlc_object_t *p_obj, extension_dialog_t *p_ext_dialog)
{
    assert(p_obj != ((void*)0));
    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 0);

    vlc_mutex_lock(&p_provider->lock);
    if (p_provider->pf_ext_update == ((void*)0))
    {
        vlc_mutex_unlock(&p_provider->lock);
        return VLC_EGENERIC;
    }
    p_provider->pf_ext_update(p_ext_dialog, p_provider->p_ext_data);
    vlc_mutex_unlock(&p_provider->lock);
    return VLC_SUCCESS;
}
