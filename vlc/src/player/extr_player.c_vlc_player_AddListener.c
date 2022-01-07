
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int listeners; } ;
typedef TYPE_1__ vlc_player_t ;
struct TYPE_8__ {int node; void* cbs_data; struct vlc_player_cbs const* cbs; } ;
typedef TYPE_2__ vlc_player_listener_id ;
struct vlc_player_cbs {int dummy; } ;


 int assert (struct vlc_player_cbs const*) ;
 TYPE_2__* malloc (int) ;
 int vlc_list_append (int *,int *) ;
 int vlc_player_assert_locked (TYPE_1__*) ;

vlc_player_listener_id *
vlc_player_AddListener(vlc_player_t *player,
                       const struct vlc_player_cbs *cbs, void *cbs_data)
{
    assert(cbs);
    vlc_player_assert_locked(player);

    vlc_player_listener_id *listener = malloc(sizeof(*listener));
    if (!listener)
        return ((void*)0);

    listener->cbs = cbs;
    listener->cbs_data = cbs_data;

    vlc_list_append(&listener->node, &player->listeners);

    return listener;
}
