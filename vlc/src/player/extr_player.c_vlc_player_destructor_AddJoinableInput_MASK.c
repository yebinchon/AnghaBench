#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  stopping_inputs; } ;
struct TYPE_6__ {TYPE_1__ destructor; } ;
typedef  TYPE_2__ vlc_player_t ;
struct vlc_player_input {int /*<<< orphan*/  started; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct vlc_player_input*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct vlc_player_input*) ; 

void
FUNC4(vlc_player_t *player,
                                       struct vlc_player_input *input)
{
    if (FUNC1(&player->destructor.stopping_inputs, input))
        FUNC2(&input->node);

    FUNC0(!input->started);
    FUNC3(player, input);
}