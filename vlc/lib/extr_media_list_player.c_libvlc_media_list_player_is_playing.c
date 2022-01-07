
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ libvlc_state_t ;
struct TYPE_3__ {int p_mi; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 scalar_t__ libvlc_Opening ;
 scalar_t__ libvlc_Playing ;
 scalar_t__ libvlc_media_player_get_state (int ) ;

bool libvlc_media_list_player_is_playing(libvlc_media_list_player_t * p_mlp)
{
    libvlc_state_t state = libvlc_media_player_get_state(p_mlp->p_mi);
    return (state == libvlc_Opening) || (state == libvlc_Playing);
}
