
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_mi; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int libvlc_media_player_set_pause (int ,int) ;
 int lock (TYPE_1__*) ;
 int unlock (TYPE_1__*) ;

void libvlc_media_list_player_set_pause(libvlc_media_list_player_t * p_mlp,
                                        int do_pause)
{
    lock(p_mlp);
    libvlc_media_player_set_pause(p_mlp->p_mi, do_pause);
    unlock(p_mlp);
}
