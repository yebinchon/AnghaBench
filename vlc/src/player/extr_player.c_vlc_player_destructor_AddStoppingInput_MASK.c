#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  stopping_inputs; int /*<<< orphan*/  inputs; } ;
struct TYPE_9__ {TYPE_3__ destructor; } ;
typedef  TYPE_4__ vlc_player_t ;
struct vlc_player_input {TYPE_2__* player; int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int /*<<< orphan*/  wait; } ;
struct TYPE_7__ {TYPE_1__ destructor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct vlc_player_input*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(vlc_player_t *player,
                                       struct vlc_player_input *input)
{
    /* Add this input to the stopping list */
    if (FUNC1(&player->destructor.inputs, input))
        FUNC3(&input->node);
    if (!FUNC1(&player->destructor.stopping_inputs, input))
    {
        FUNC2(&input->node, &player->destructor.stopping_inputs);
        FUNC0(&input->player->destructor.wait);
    }
}