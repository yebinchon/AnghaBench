
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vlc_tick_t ;
typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int input_item_t ;


 int VLC_UNUSED (int *) ;
 int assert (int *) ;
 int * vlc_player_GetCurrentMedia (int *) ;
 int vlc_playlist_AssertLocked (int *) ;
 int vlc_playlist_NotifyMediaUpdated (int *,int *) ;

__attribute__((used)) static void
on_player_media_length_changed(vlc_player_t *player, vlc_tick_t new_length,
                               void *userdata)
{
    VLC_UNUSED(player);
    VLC_UNUSED(new_length);
    vlc_playlist_t *playlist = userdata;


    vlc_playlist_AssertLocked(playlist);

    input_item_t *media = vlc_player_GetCurrentMedia(player);
    assert(media);

    vlc_playlist_NotifyMediaUpdated(playlist, media);
}
