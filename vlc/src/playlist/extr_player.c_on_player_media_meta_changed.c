
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int input_item_t ;


 int VLC_UNUSED (int *) ;
 int vlc_playlist_AssertLocked (int *) ;
 int vlc_playlist_NotifyMediaUpdated (int *,int *) ;

__attribute__((used)) static void
on_player_media_meta_changed(vlc_player_t *player, input_item_t *media,
                             void *userdata)
{
    VLC_UNUSED(player);
    vlc_playlist_t *playlist = userdata;


    vlc_playlist_AssertLocked(playlist);

    vlc_playlist_NotifyMediaUpdated(playlist, media);
}
