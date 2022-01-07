
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int player; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int vlc_player_Pause (int ) ;

void
vlc_playlist_Pause(vlc_playlist_t *playlist)
{
    vlc_player_Pause(playlist->player);
}
