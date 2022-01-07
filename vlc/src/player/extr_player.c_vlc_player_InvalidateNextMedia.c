
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next_media_requested; int * next_media; } ;
typedef TYPE_1__ vlc_player_t ;


 int input_item_Release (int *) ;
 int vlc_player_assert_locked (TYPE_1__*) ;

void
vlc_player_InvalidateNextMedia(vlc_player_t *player)
{
    vlc_player_assert_locked(player);
    if (player->next_media)
    {
        input_item_Release(player->next_media);
        player->next_media = ((void*)0);
    }
    player->next_media_requested = 0;

}
