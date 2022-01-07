
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_6__ {int p_mi; int p_mlist; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;
typedef int libvlc_media_list_path_t ;


 int libvlc_media_list_path_of_item (int ,int *) ;
 int libvlc_media_player_play (int ) ;
 int libvlc_printerr (char*) ;
 int lock (TYPE_1__*) ;
 int set_current_playing_item (TYPE_1__*,int ) ;
 int unlock (TYPE_1__*) ;

int libvlc_media_list_player_play_item(libvlc_media_list_player_t * p_mlp, libvlc_media_t * p_md)
{
    lock(p_mlp);
    libvlc_media_list_path_t path = libvlc_media_list_path_of_item(p_mlp->p_mlist, p_md);
    if (!path)
    {
        libvlc_printerr("Item not found in media list");
        unlock(p_mlp);
        return -1;
    }

    set_current_playing_item(p_mlp, path);
    libvlc_media_player_play(p_mlp->p_mi);
    unlock(p_mlp);
    return 0;
}
