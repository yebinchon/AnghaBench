#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__* sources; } ;
struct TYPE_7__ {TYPE_2__ timer; } ;
typedef  TYPE_3__ vlc_player_t ;
struct TYPE_5__ {int /*<<< orphan*/  listeners; } ;

/* Variables and functions */
 size_t VLC_PLAYER_TIMER_TYPE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(vlc_player_t *player)
{
    for (size_t i = 0; i < VLC_PLAYER_TIMER_TYPE_COUNT; ++i)
        FUNC0(FUNC1(&player->timer.sources[i].listeners));
    FUNC2(&player->timer.lock);
}