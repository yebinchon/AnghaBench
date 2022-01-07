
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int libvlc_playback_mode_t ;
struct TYPE_5__ {int e_playback_mode; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int lock (TYPE_1__*) ;
 int unlock (TYPE_1__*) ;

void libvlc_media_list_player_set_playback_mode(
                                            libvlc_media_list_player_t * p_mlp,
                                            libvlc_playback_mode_t e_mode )
{
    lock(p_mlp);
    p_mlp->e_playback_mode = e_mode;
    unlock(p_mlp);
}
