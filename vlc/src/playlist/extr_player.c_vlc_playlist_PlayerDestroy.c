
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int player; int player_listener; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int vlc_player_Delete (int ) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_RemoveListener (int ,int ) ;
 int vlc_player_Unlock (int ) ;

void
vlc_playlist_PlayerDestroy(vlc_playlist_t *playlist)
{
    vlc_player_Lock(playlist->player);
    vlc_player_RemoveListener(playlist->player, playlist->player_listener);
    vlc_player_Unlock(playlist->player);

    vlc_player_Delete(playlist->player);
}
