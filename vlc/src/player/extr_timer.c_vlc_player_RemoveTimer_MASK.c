#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ vlc_player_timer_id ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {TYPE_1__ timer; } ;
typedef  TYPE_3__ vlc_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(vlc_player_t *player, vlc_player_timer_id *timer)
{
    FUNC0(timer);

    FUNC3(&player->timer.lock);
    FUNC2(&timer->node);
    FUNC4(&player->timer.lock);

    FUNC1(timer);
}