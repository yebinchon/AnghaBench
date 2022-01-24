#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_3__ {struct vlc_player_input* input; } ;
typedef  TYPE_1__ vlc_player_t ;
struct vlc_player_input {int /*<<< orphan*/  time; TYPE_1__* player; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

vlc_tick_t
FUNC2(struct vlc_player_input *input)
{
    vlc_player_t *player = input->player;
    vlc_tick_t ts;

    if (input == player->input
     && FUNC0(player, FUNC1(), &ts, NULL) == 0)
        return ts;
    return input->time;
}