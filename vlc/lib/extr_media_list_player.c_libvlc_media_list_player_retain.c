
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_refcount; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;


 int lock (TYPE_1__*) ;
 int unlock (TYPE_1__*) ;

void libvlc_media_list_player_retain(libvlc_media_list_player_t * p_mlp)
{
    if (!p_mlp)
        return;

    lock(p_mlp);
    p_mlp->i_refcount++;
    unlock(p_mlp);
}
