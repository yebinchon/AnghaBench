
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_5__ {int node; } ;
typedef TYPE_1__ vlc_player_listener_id ;


 int assert (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int vlc_list_remove (int *) ;
 int vlc_player_assert_locked (int *) ;

void
vlc_player_RemoveListener(vlc_player_t *player,
                          vlc_player_listener_id *id)
{
    assert(id);
    vlc_player_assert_locked(player);

    vlc_list_remove(&id->node);
    free(id);
}
