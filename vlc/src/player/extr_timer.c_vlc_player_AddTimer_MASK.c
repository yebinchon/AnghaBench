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
typedef  scalar_t__ vlc_tick_t ;
struct vlc_player_timer_id {int /*<<< orphan*/  node; void* data; struct vlc_player_timer_cbs const* cbs; scalar_t__ last_update_date; scalar_t__ period; } ;
typedef  struct vlc_player_timer_id vlc_player_timer_id ;
struct TYPE_5__ {int /*<<< orphan*/  listeners; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ best_source; } ;
struct TYPE_7__ {TYPE_2__ timer; } ;
typedef  TYPE_3__ vlc_player_t ;
struct vlc_player_timer_cbs {scalar_t__ on_update; } ;

/* Variables and functions */
 scalar_t__ VLC_TICK_0 ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vlc_player_timer_id* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

vlc_player_timer_id *
FUNC5(vlc_player_t *player, vlc_tick_t min_period,
                    const struct vlc_player_timer_cbs *cbs, void *data)
{
    FUNC0(min_period >= VLC_TICK_0 || min_period == VLC_TICK_INVALID);
    FUNC0(cbs && cbs->on_update);

    struct vlc_player_timer_id *timer = FUNC1(sizeof(*timer));
    if (!timer)
        return NULL;
    timer->period = min_period;
    timer->last_update_date = VLC_TICK_INVALID;
    timer->cbs = cbs;
    timer->data = data;

    FUNC3(&player->timer.lock);
    FUNC2(&timer->node, &player->timer.best_source.listeners);
    FUNC4(&player->timer.lock);

    return timer;
}