
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i_refcount; struct TYPE_8__* current_playing_item_path; int object_lock; int mp_callback_lock; int seek_pending; int event_manager; scalar_t__ p_mlist; int p_mi; int thread; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int assert (int) ;
 int free (TYPE_1__*) ;
 int libvlc_event_manager_destroy (int *) ;
 int libvlc_media_list_release (scalar_t__) ;
 int libvlc_media_player_release (int ) ;
 int lock (TYPE_1__*) ;
 int uninstall_media_player_observer (TYPE_1__*) ;
 int uninstall_playlist_observer (TYPE_1__*) ;
 int unlock (TYPE_1__*) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;

void libvlc_media_list_player_release(libvlc_media_list_player_t * p_mlp)
{
    if (!p_mlp)
        return;

    lock(p_mlp);
    p_mlp->i_refcount--;
    if (p_mlp->i_refcount > 0)
    {
        unlock(p_mlp);
        return;
    }
    assert(p_mlp->i_refcount == 0);
    unlock(p_mlp);

    vlc_cancel(p_mlp->thread);
    vlc_join(p_mlp->thread, ((void*)0));

    lock(p_mlp);


    uninstall_media_player_observer(p_mlp);
    libvlc_media_player_release(p_mlp->p_mi);

    if (p_mlp->p_mlist)
    {
        uninstall_playlist_observer(p_mlp);
        libvlc_media_list_release(p_mlp->p_mlist);
    }

    unlock(p_mlp);

    libvlc_event_manager_destroy(&p_mlp->event_manager);
    vlc_cond_destroy(&p_mlp->seek_pending);
    vlc_mutex_destroy(&p_mlp->mp_callback_lock);
    vlc_mutex_destroy(&p_mlp->object_lock);

    free(p_mlp->current_playing_item_path);
    free(p_mlp);
}
