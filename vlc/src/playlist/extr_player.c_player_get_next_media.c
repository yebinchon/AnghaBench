
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int input_item_t ;


 int VLC_UNUSED (int *) ;
 int * vlc_playlist_GetNextMedia (int *) ;

__attribute__((used)) static input_item_t *
player_get_next_media(vlc_player_t *player, void *userdata)
{
    VLC_UNUSED(player);
    vlc_playlist_t *playlist = userdata;
    return vlc_playlist_GetNextMedia(playlist);
}
