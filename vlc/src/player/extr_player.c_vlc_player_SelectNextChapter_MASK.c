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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_input {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_CONTROL_SET_SEEKPOINT_NEXT ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vlc_player_input* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(vlc_player_t *player)
{
    struct vlc_player_input *input = FUNC2(player);
    if (!input)
        return;
    int ret = FUNC1(input->thread, INPUT_CONTROL_SET_SEEKPOINT_NEXT,
                                NULL);
    if (ret == VLC_SUCCESS)
        FUNC3(player, FUNC0("Next chapter"));
}