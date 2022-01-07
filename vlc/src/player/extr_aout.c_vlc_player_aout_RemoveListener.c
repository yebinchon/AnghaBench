
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int aout_listeners_lock; } ;
typedef TYPE_1__ vlc_player_t ;
struct TYPE_8__ {int node; } ;
typedef TYPE_2__ vlc_player_aout_listener_id ;


 int assert (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int vlc_list_remove (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_player_aout_RemoveListener(vlc_player_t *player,
                               vlc_player_aout_listener_id *id)
{
    assert(id);

    vlc_mutex_lock(&player->aout_listeners_lock);
    vlc_list_remove(&id->node);
    vlc_mutex_unlock(&player->aout_listeners_lock);
    free(id);
}
