
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_renderer_item_t ;
struct TYPE_4__ {int * renderer; } ;
typedef TYPE_1__ vlc_player_t ;


 int vlc_player_assert_locked (TYPE_1__*) ;

vlc_renderer_item_t *
vlc_player_GetRenderer(vlc_player_t *player)
{
    vlc_player_assert_locked(player);
    return player->renderer;
}
