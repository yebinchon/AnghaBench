
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct vlc_player_input {int error; int player; int started; } ;
typedef int input_state_e ;







 int VLC_PLAYER_ERROR_GENERIC ;
 int VLC_PLAYER_STATE_PAUSED ;
 int VLC_PLAYER_STATE_PLAYING ;
 int VLC_PLAYER_STATE_STARTED ;
 int VLC_PLAYER_STATE_STOPPING ;
 int VLC_TICK_INVALID ;
 int on_error_changed ;
 int vlc_assert_unreachable () ;
 int vlc_player_SendEvent (int ,int ,int ) ;
 int vlc_player_destructor_AddStoppingInput (int ,struct vlc_player_input*) ;
 int vlc_player_input_HandleState (struct vlc_player_input*,int ,int ) ;

__attribute__((used)) static void
vlc_player_input_HandleStateEvent(struct vlc_player_input *input,
                                  input_state_e state, vlc_tick_t state_date)
{
    switch (state)
    {
        case 130:
            vlc_player_input_HandleState(input, VLC_PLAYER_STATE_STARTED,
                                         VLC_TICK_INVALID);
            break;
        case 128:
            vlc_player_input_HandleState(input, VLC_PLAYER_STATE_PLAYING,
                                         state_date);
            break;
        case 129:
            vlc_player_input_HandleState(input, VLC_PLAYER_STATE_PAUSED,
                                         state_date);
            break;
        case 132:
            vlc_player_input_HandleState(input, VLC_PLAYER_STATE_STOPPING,
                                         VLC_TICK_INVALID);
            vlc_player_destructor_AddStoppingInput(input->player, input);
            break;
        case 131:

            if (input->started)
            {

                input->error = VLC_PLAYER_ERROR_GENERIC;
                vlc_player_SendEvent(input->player, on_error_changed, input->error);
            }
            break;
        default:
            vlc_assert_unreachable();
    }
}
