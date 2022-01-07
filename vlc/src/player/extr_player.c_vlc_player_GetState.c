
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int global_state; } ;
typedef TYPE_1__ vlc_player_t ;
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;


 int vlc_player_assert_locked (TYPE_1__*) ;

enum vlc_player_state
vlc_player_GetState(vlc_player_t *player)
{
    vlc_player_assert_locked(player);
    return player->global_state;
}
