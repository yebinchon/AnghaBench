
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ vlc_dialog_provider ;
typedef int vlc_dialog_id ;


 int assert (int) ;
 int dialog_cancel_locked (TYPE_1__*,int *) ;
 int dialog_remove_locked (TYPE_1__*,int *) ;
 TYPE_1__* get_dialog_provider (int *,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_dialog_release(vlc_object_t *p_obj, vlc_dialog_id *p_id)
{
    assert(p_obj != ((void*)0) && p_id != ((void*)0));
    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 0);

    vlc_mutex_lock(&p_provider->lock);
    dialog_cancel_locked(p_provider, p_id);
    dialog_remove_locked(p_provider, p_id);
    vlc_mutex_unlock(&p_provider->lock);
}
