
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int releasing_media; int next_media_requested; int * next_media; int * input; scalar_t__ media; } ;
typedef TYPE_1__ vlc_player_t ;
typedef int input_item_t ;


 int VLC_SUCCESS ;
 int assert (int) ;
 int * input_item_Hold (int *) ;
 int vlc_player_CancelWaitError (TYPE_1__*) ;
 int vlc_player_InvalidateNextMedia (TYPE_1__*) ;
 int vlc_player_OpenNextMedia (TYPE_1__*) ;
 int vlc_player_assert_locked (TYPE_1__*) ;
 int vlc_player_destructor_AddInput (TYPE_1__*,int *) ;
 int vlc_player_destructor_IsEmpty (TYPE_1__*) ;

int
vlc_player_SetCurrentMedia(vlc_player_t *player, input_item_t *media)
{
    vlc_player_assert_locked(player);

    vlc_player_CancelWaitError(player);

    vlc_player_InvalidateNextMedia(player);

    if (media)
    {

        player->next_media = input_item_Hold(media);
        player->releasing_media = 0;
        player->next_media_requested = 1;
    }
    else if (player->media)
    {


        player->releasing_media = 1;
        player->next_media_requested = 0;
    }
    else
        return VLC_SUCCESS;

    if (player->input)
    {
        vlc_player_destructor_AddInput(player, player->input);
        player->input = ((void*)0);
    }

    assert(media == player->next_media);
    if (!vlc_player_destructor_IsEmpty(player))
    {

        return VLC_SUCCESS;
    }


    return vlc_player_OpenNextMedia(player);
}
