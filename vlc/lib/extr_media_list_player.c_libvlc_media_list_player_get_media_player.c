
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_media_player_t ;
struct TYPE_3__ {int * p_mi; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int libvlc_media_player_retain (int *) ;

libvlc_media_player_t * libvlc_media_list_player_get_media_player(libvlc_media_list_player_t * p_mlp)
{
    libvlc_media_player_retain(p_mlp->p_mi);
    return p_mlp->p_mi;
}
