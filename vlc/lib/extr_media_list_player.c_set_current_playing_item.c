
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_6__ {int p_mi; int p_mlist; int current_playing_item_path; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;
typedef int libvlc_media_list_path_t ;


 int assert_locked (TYPE_1__*) ;
 int free (int ) ;
 int install_media_player_observer (TYPE_1__*) ;
 int * libvlc_media_list_item_at_path (int ,int ) ;
 int libvlc_media_player_set_media (int ,int *) ;
 int libvlc_media_release (int *) ;
 int uninstall_media_player_observer (TYPE_1__*) ;

__attribute__((used)) static void
set_current_playing_item(libvlc_media_list_player_t * p_mlp, libvlc_media_list_path_t path)
{
    assert_locked(p_mlp);


    if (p_mlp->current_playing_item_path != path)
    {
        free(p_mlp->current_playing_item_path);
        p_mlp->current_playing_item_path = path;
    }

    if (!path)
        return;

    libvlc_media_t * p_md;
    p_md = libvlc_media_list_item_at_path(p_mlp->p_mlist, path);
    if (!p_md)
        return;


    uninstall_media_player_observer(p_mlp);

    libvlc_media_player_set_media(p_mlp->p_mi, p_md);

    install_media_player_observer(p_mlp);
    libvlc_media_release(p_md);
}
