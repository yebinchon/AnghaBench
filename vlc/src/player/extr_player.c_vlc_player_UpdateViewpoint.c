
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_viewpoint_t ;
typedef int vlc_player_t ;
struct vlc_player_input {int thread; } ;
struct TYPE_3__ {int const viewpoint; } ;
typedef TYPE_1__ input_control_param_t ;
typedef enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;


 int INPUT_CONTROL_SET_VIEWPOINT ;
 int INPUT_CONTROL_UPDATE_VIEWPOINT ;
 int VLC_PLAYER_WHENCE_ABSOLUTE ;
 int input_ControlPush (int ,int ,TYPE_1__*) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

void
vlc_player_UpdateViewpoint(vlc_player_t *player,
                           const vlc_viewpoint_t *viewpoint,
                           enum vlc_player_whence whence)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (input)
    {
        input_control_param_t param = { .viewpoint = *viewpoint };
        if (whence == VLC_PLAYER_WHENCE_ABSOLUTE)
            input_ControlPush(input->thread, INPUT_CONTROL_SET_VIEWPOINT,
                              &param);
        else
            input_ControlPush(input->thread, INPUT_CONTROL_UPDATE_VIEWPOINT,
                              &param);
    }
}
