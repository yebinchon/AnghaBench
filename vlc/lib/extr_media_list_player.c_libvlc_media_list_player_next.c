
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_player_t ;


 int lock (int *) ;
 int set_relative_playlist_position_and_play (int *,int) ;
 int unlock (int *) ;

int libvlc_media_list_player_next(libvlc_media_list_player_t * p_mlp)
{
    lock(p_mlp);
    int failure = set_relative_playlist_position_and_play(p_mlp, 1);
    unlock(p_mlp);
    return failure;
}
