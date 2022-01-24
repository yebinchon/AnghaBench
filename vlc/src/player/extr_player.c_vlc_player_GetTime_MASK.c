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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_input {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 struct vlc_player_input* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_player_input*) ; 

vlc_tick_t
FUNC2(vlc_player_t *player)
{
    struct vlc_player_input *input = FUNC0(player);

    if (!input)
        return VLC_TICK_INVALID;

    return FUNC1(input);
}