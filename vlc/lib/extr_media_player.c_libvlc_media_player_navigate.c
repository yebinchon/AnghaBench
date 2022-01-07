
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int map ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;
typedef enum vlc_player_nav { ____Placeholder_vlc_player_nav } vlc_player_nav ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Navigate (int *,int const) ;
 int vlc_player_Unlock (int *) ;

void libvlc_media_player_navigate( libvlc_media_player_t* p_mi,
                                   unsigned navigate )
{
    static const enum vlc_player_nav map[] =
    {
        133, 128, 132,
        131, 129, 130,
    };

    if( navigate >= sizeof(map) / sizeof(map[0]) )
      return;

    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_player_Navigate(player, map[navigate]);

    vlc_player_Unlock(player);
}
