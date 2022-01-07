
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_int; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_player_t ;
struct vlc_player_input {int thread; int started; } ;


 int INPUT_CONTROL_SET_STATE ;
 int OSD_PAUSE_ICON ;
 int OSD_PLAY_ICON ;
 int PAUSE_S ;
 int PLAYING_S ;
 int VLC_SUCCESS ;
 int input_ControlPushHelper (int ,int ,TYPE_1__*) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int vlc_player_osd_Icon (int *,int ) ;

__attribute__((used)) static void
vlc_player_SetPause(vlc_player_t *player, bool pause)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input || !input->started)
        return;

    vlc_value_t val = { .i_int = pause ? PAUSE_S : PLAYING_S };
    int ret = input_ControlPushHelper(input->thread, INPUT_CONTROL_SET_STATE,
                                      &val);

    if (ret == VLC_SUCCESS)
        vlc_player_osd_Icon(player, pause ? OSD_PAUSE_ICON : OSD_PLAY_ICON);
}
