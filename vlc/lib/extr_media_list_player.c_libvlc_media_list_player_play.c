
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_mi; int current_playing_item_path; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int libvlc_media_player_play (int ) ;
 int lock (TYPE_1__*) ;
 int set_relative_playlist_position_and_play (TYPE_1__*,int) ;
 int unlock (TYPE_1__*) ;

void libvlc_media_list_player_play(libvlc_media_list_player_t * p_mlp)
{
    lock(p_mlp);
    if (!p_mlp->current_playing_item_path)
    {
        set_relative_playlist_position_and_play(p_mlp, 1);
        unlock(p_mlp);
        return;
    }
    libvlc_media_player_play(p_mlp->p_mi);
    unlock(p_mlp);
}
