
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pause_on_cork; } ;
typedef TYPE_1__ vlc_player_t ;


 int vlc_player_assert_locked (TYPE_1__*) ;

void
vlc_player_SetPauseOnCork(vlc_player_t *player, bool enabled)
{
    vlc_player_assert_locked(player);
    player->pause_on_cork = enabled;
}
