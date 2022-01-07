
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int node; } ;
typedef TYPE_1__ vlc_player_vout_listener_id ;
struct TYPE_8__ {int vout_listeners_lock; } ;
typedef TYPE_2__ vlc_player_t ;


 int assert (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int vlc_list_remove (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_player_vout_RemoveListener(vlc_player_t *player,
                               vlc_player_vout_listener_id *id)
{
    assert(id);

    vlc_mutex_lock(&player->vout_listeners_lock);
    vlc_list_remove(&id->node);
    vlc_mutex_unlock(&player->vout_listeners_lock);
    free(id);
}
