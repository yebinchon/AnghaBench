#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* sources; int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {TYPE_2__ timer; } ;
typedef  TYPE_4__ vlc_player_t ;
struct TYPE_9__ {int /*<<< orphan*/  system_date; } ;
struct TYPE_7__ {int /*<<< orphan*/ * es; TYPE_3__ point; int /*<<< orphan*/  listeners; } ;

/* Variables and functions */
 size_t VLC_PLAYER_TIMER_TYPE_COUNT ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

void
FUNC3(vlc_player_t *player)
{
    FUNC1(&player->timer.lock);

    for (size_t i = 0; i < VLC_PLAYER_TIMER_TYPE_COUNT; ++i)
    {
        FUNC0(&player->timer.sources[i].listeners);
        player->timer.sources[i].point.system_date = VLC_TICK_INVALID;
        player->timer.sources[i].es = NULL;
    }
    FUNC2(player);
}