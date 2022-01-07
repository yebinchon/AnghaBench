
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_renderer_item_t ;
typedef int vlc_player_t ;
typedef int libvlc_renderer_item_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int * libvlc_renderer_item_to_vlc (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SetRenderer (int *,int *) ;
 int vlc_player_Unlock (int *) ;

int libvlc_media_player_set_renderer( libvlc_media_player_t *p_mi,
                                      libvlc_renderer_item_t *p_litem )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_renderer_item_t *renderer = libvlc_renderer_item_to_vlc(p_litem);
    vlc_player_SetRenderer(player, renderer);

    vlc_player_Unlock(player);
    return 0;
}
