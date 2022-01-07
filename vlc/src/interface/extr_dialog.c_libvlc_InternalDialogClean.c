
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ vlc_dialog_provider ;
typedef int libvlc_int_t ;
struct TYPE_6__ {TYPE_1__* p_dialog_provider; } ;


 int assert (int ) ;
 int dialog_clear_all_locked (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 TYPE_2__* libvlc_priv (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
libvlc_InternalDialogClean(libvlc_int_t *p_libvlc)
{
    assert(p_libvlc != ((void*)0));
    vlc_dialog_provider *p_provider = libvlc_priv(p_libvlc)->p_dialog_provider;

    if (p_provider == ((void*)0))
        return;
    vlc_mutex_lock(&p_provider->lock);
    dialog_clear_all_locked(p_provider);
    vlc_mutex_unlock(&p_provider->lock);

    vlc_mutex_destroy(&p_provider->lock);
    free(p_provider);
    libvlc_priv(p_libvlc)->p_dialog_provider = ((void*)0);
}
