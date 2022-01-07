
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int node; void* cbs_data; struct vlc_player_vout_cbs const* cbs; } ;
typedef TYPE_1__ vlc_player_vout_listener_id ;
struct TYPE_7__ {int vout_listeners_lock; int vout_listeners; } ;
typedef TYPE_2__ vlc_player_t ;
struct vlc_player_vout_cbs {int dummy; } ;


 int assert (struct vlc_player_vout_cbs const*) ;
 TYPE_1__* malloc (int) ;
 int vlc_list_append (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_player_vout_listener_id *
vlc_player_vout_AddListener(vlc_player_t *player,
                            const struct vlc_player_vout_cbs *cbs,
                            void *cbs_data)
{
    assert(cbs);

    vlc_player_vout_listener_id *listener = malloc(sizeof(*listener));
    if (!listener)
        return ((void*)0);

    listener->cbs = cbs;
    listener->cbs_data = cbs_data;

    vlc_mutex_lock(&player->vout_listeners_lock);
    vlc_list_append(&listener->node, &player->vout_listeners);
    vlc_mutex_unlock(&player->vout_listeners_lock);

    return listener;
}
