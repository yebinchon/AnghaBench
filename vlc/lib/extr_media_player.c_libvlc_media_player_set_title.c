
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int vlc_player_Lock (int *) ;
 int vlc_player_SelectTitleIdx (int *,int) ;
 int vlc_player_Unlock (int *) ;

void libvlc_media_player_set_title( libvlc_media_player_t *p_mi,
                                    int i_title )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_player_SelectTitleIdx(player, i_title);

    vlc_player_Unlock(player);
}
