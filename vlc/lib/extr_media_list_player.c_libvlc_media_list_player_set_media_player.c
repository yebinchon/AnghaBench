
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int libvlc_media_player_t ;
struct TYPE_7__ {int * p_mi; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int assert (int ) ;
 int install_media_player_observer (TYPE_1__*) ;
 int libvlc_media_player_release (int *) ;
 int libvlc_media_player_retain (int *) ;
 int lock (TYPE_1__*) ;
 int uninstall_media_player_observer (TYPE_1__*) ;
 int unlock (TYPE_1__*) ;

void libvlc_media_list_player_set_media_player(libvlc_media_list_player_t * p_mlp, libvlc_media_player_t * p_mi)
{
    libvlc_media_player_t *p_oldmi;

    assert(p_mi != ((void*)0));
    libvlc_media_player_retain(p_mi);

    lock(p_mlp);
    uninstall_media_player_observer(p_mlp);
    p_oldmi = p_mlp->p_mi;
    p_mlp->p_mi = p_mi;
    install_media_player_observer(p_mlp);
    unlock(p_mlp);

    libvlc_media_player_release(p_oldmi);
}
