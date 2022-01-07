
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int player; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int VLC_UNUSED (int) ;
 int vlc_player_SetCurrentMedia (int ,int *) ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_ClearItems (TYPE_1__*) ;
 int vlc_playlist_ItemsReset (TYPE_1__*) ;

void
vlc_playlist_Clear(vlc_playlist_t *playlist)
{
    vlc_playlist_AssertLocked(playlist);

    int ret = vlc_player_SetCurrentMedia(playlist->player, ((void*)0));
    VLC_UNUSED(ret);

    vlc_playlist_ClearItems(playlist);
    vlc_playlist_ItemsReset(playlist);
}
