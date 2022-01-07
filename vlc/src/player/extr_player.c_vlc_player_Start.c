
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int started; TYPE_3__* input; scalar_t__ start_paused; int media; scalar_t__ next_media; } ;
typedef TYPE_1__ vlc_player_t ;
struct TYPE_11__ {int thread; int started; } ;


 int OSD_PLAY_ICON ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_VAR_BOOL ;
 int assert (int) ;
 int var_Create (int ,char*,int ) ;
 int var_SetBool (int ,char*,int) ;
 int vlc_player_CancelWaitError (TYPE_1__*) ;
 int vlc_player_assert_locked (TYPE_1__*) ;
 int vlc_player_destructor_IsEmpty (TYPE_1__*) ;
 TYPE_3__* vlc_player_input_New (TYPE_1__*,int ) ;
 int vlc_player_input_Start (TYPE_3__*) ;
 int vlc_player_osd_Icon (TYPE_1__*,int ) ;

int
vlc_player_Start(vlc_player_t *player)
{
    vlc_player_assert_locked(player);

    vlc_player_CancelWaitError(player);

    if (player->started)
        return VLC_SUCCESS;

    if (!vlc_player_destructor_IsEmpty(player))
    {
        if (player->next_media)
        {
            player->started = 1;
            return VLC_SUCCESS;
        }
        else
            return VLC_EGENERIC;
    }

    if (!player->media)
        return VLC_EGENERIC;

    if (!player->input)
    {

        player->input = vlc_player_input_New(player, player->media);

        if (!player->input)
            return VLC_ENOMEM;
    }
    assert(!player->input->started);

    if (player->start_paused)
    {
        var_Create(player->input->thread, "start-paused", VLC_VAR_BOOL);
        var_SetBool(player->input->thread, "start-paused", 1);
    }

    int ret = vlc_player_input_Start(player->input);
    if (ret == VLC_SUCCESS)
    {
        player->started = 1;
        vlc_player_osd_Icon(player, OSD_PLAY_ICON);
    }
    return ret;
}
