#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct vlc_player_input {int /*<<< orphan*/  error; int /*<<< orphan*/  player; int /*<<< orphan*/  started; } ;
typedef  int input_state_e ;

/* Variables and functions */
#define  END_S 132 
#define  ERROR_S 131 
#define  OPENING_S 130 
#define  PAUSE_S 129 
#define  PLAYING_S 128 
 int /*<<< orphan*/  VLC_PLAYER_ERROR_GENERIC ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_PAUSED ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_PLAYING ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STARTED ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPING ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  on_error_changed ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vlc_player_input*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_player_input*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vlc_player_input *input,
                                  input_state_e state, vlc_tick_t state_date)
{
    switch (state)
    {
        case OPENING_S:
            FUNC3(input, VLC_PLAYER_STATE_STARTED,
                                         VLC_TICK_INVALID);
            break;
        case PLAYING_S:
            FUNC3(input, VLC_PLAYER_STATE_PLAYING,
                                         state_date);
            break;
        case PAUSE_S:
            FUNC3(input, VLC_PLAYER_STATE_PAUSED,
                                         state_date);
            break;
        case END_S:
            FUNC3(input, VLC_PLAYER_STATE_STOPPING,
                                         VLC_TICK_INVALID);
            FUNC2(input->player, input);
            break;
        case ERROR_S:
            /* Don't send errors if the input is stopped by the user */
            if (input->started)
            {
                /* Contrary to the input_thead_t, an error is not a state */
                input->error = VLC_PLAYER_ERROR_GENERIC;
                FUNC1(input->player, on_error_changed, input->error);
            }
            break;
        default:
            FUNC0();
    }
}