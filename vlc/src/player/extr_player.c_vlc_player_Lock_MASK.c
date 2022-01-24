#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_1__ timer; int /*<<< orphan*/  aout_listeners_lock; int /*<<< orphan*/  vout_listeners_lock; } ;
typedef  TYPE_2__ vlc_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(vlc_player_t *player)
{
    /* Vout and aout locks should not be held, cf. vlc_player_vout_cbs and
     * vlc_player_aout_cbs documentation */
    FUNC0(!FUNC2(&player->vout_listeners_lock));
    FUNC0(!FUNC2(&player->aout_listeners_lock));
    /* The timer lock should not be held (possible lock-order-inversion), cf.
     * vlc_player_timer_cbs.on_update documentation */
    FUNC0(!FUNC2(&player->timer.lock));

    FUNC1(&player->lock);
}