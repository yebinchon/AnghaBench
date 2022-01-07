
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_player_t ;


 int lock (int *) ;
 int stop (int *) ;
 int unlock (int *) ;

void libvlc_media_list_player_stop_async(libvlc_media_list_player_t * p_mlp)
{
    lock(p_mlp);
    stop(p_mlp);
    unlock(p_mlp);
}
