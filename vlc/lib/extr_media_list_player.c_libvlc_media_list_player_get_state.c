
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_state_t ;
struct TYPE_3__ {int p_mi; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int libvlc_media_player_get_state (int ) ;

libvlc_state_t
libvlc_media_list_player_get_state(libvlc_media_list_player_t * p_mlp)
{
    return libvlc_media_player_get_state(p_mlp->p_mi);
}
