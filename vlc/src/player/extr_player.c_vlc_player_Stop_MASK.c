#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int started; int /*<<< orphan*/ * input; } ;
typedef  TYPE_1__ vlc_player_t ;
struct vlc_player_input {int dummy; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct vlc_player_input*) ; 
 struct vlc_player_input* FUNC3 (TYPE_1__*) ; 

int
FUNC4(vlc_player_t *player)
{
    struct vlc_player_input *input = FUNC3(player);

    FUNC0(player);

    FUNC1(player);

    if (!input || !player->started)
        return VLC_EGENERIC;
    player->started = false;

    FUNC2(player, input);
    player->input = NULL;
    return VLC_SUCCESS;
}