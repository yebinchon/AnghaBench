
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_mi; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;
typedef int libvlc_event_manager_t ;


 int * libvlc_media_player_event_manager (int ) ;

__attribute__((used)) static inline libvlc_event_manager_t * mplayer_em(libvlc_media_list_player_t * p_mlp)
{
    return libvlc_media_player_event_manager(p_mlp->p_mi);
}
