
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int lock; int * p_cbs_data; int cbs; } ;
typedef TYPE_1__ vlc_dialog_provider ;
typedef int vlc_dialog_cbs ;


 int assert (int ) ;
 int dialog_clear_all_locked (TYPE_1__*) ;
 TYPE_1__* get_dialog_provider (int *,int) ;
 int memset (int *,int ,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_dialog_provider_set_callbacks(vlc_object_t *p_obj,
                                  const vlc_dialog_cbs *p_cbs, void *p_data)
{
    assert(p_obj != ((void*)0));
    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 0);

    vlc_mutex_lock(&p_provider->lock);
    dialog_clear_all_locked(p_provider);

    if (p_cbs == ((void*)0))
    {
        memset(&p_provider->cbs, 0, sizeof(p_provider->cbs));
        p_provider->p_cbs_data = ((void*)0);
    }
    else
    {
        p_provider->cbs = *p_cbs;
        p_provider->p_cbs_data = p_data;
    }
    vlc_mutex_unlock(&p_provider->lock);
}
