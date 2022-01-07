
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 float vlc_player_GetPosition (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

float libvlc_media_player_get_position( libvlc_media_player_t *p_mi )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    float f_position = vlc_player_GetPosition(player);

    vlc_player_Unlock(player);
    return f_position;
}
