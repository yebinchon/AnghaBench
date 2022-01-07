
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ media_stopped_action; int next_media_requested; int media_provider_data; TYPE_1__* media_provider; int * next_media; } ;
typedef TYPE_2__ vlc_player_t ;
struct TYPE_6__ {int * (* get_next ) (TYPE_2__*,int ) ;} ;


 scalar_t__ VLC_PLAYER_MEDIA_STOPPED_CONTINUE ;
 int assert (int ) ;
 int * stub1 (TYPE_2__*,int ) ;
 int vlc_player_assert_locked (TYPE_2__*) ;

void
vlc_player_PrepareNextMedia(vlc_player_t *player)
{
    vlc_player_assert_locked(player);

    if (!player->media_provider
     || player->media_stopped_action != VLC_PLAYER_MEDIA_STOPPED_CONTINUE
     || player->next_media_requested)
        return;

    assert(player->next_media == ((void*)0));
    player->next_media =
        player->media_provider->get_next(player, player->media_provider_data);
    player->next_media_requested = 1;
}
