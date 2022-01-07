
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int libvlc_media_list_t ;
struct TYPE_7__ {int * p_mlist; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int assert (int *) ;
 int install_playlist_observer (TYPE_1__*) ;
 int libvlc_media_list_release (int *) ;
 int libvlc_media_list_retain (int *) ;
 int lock (TYPE_1__*) ;
 int uninstall_playlist_observer (TYPE_1__*) ;
 int unlock (TYPE_1__*) ;

void libvlc_media_list_player_set_media_list(libvlc_media_list_player_t * p_mlp, libvlc_media_list_t * p_mlist)
{
    assert (p_mlist);

    lock(p_mlp);
    if (p_mlp->p_mlist)
    {
        uninstall_playlist_observer(p_mlp);
        libvlc_media_list_release(p_mlp->p_mlist);
    }
    libvlc_media_list_retain(p_mlist);
    p_mlp->p_mlist = p_mlist;

    install_playlist_observer(p_mlp);

    unlock(p_mlp);
}
