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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_9__ {scalar_t__ system_date; } ;
struct TYPE_6__ {TYPE_4__ point; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_1__ best_source; } ;
struct TYPE_8__ {TYPE_2__ timer; } ;
typedef  TYPE_3__ vlc_player_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,float*) ; 

int
FUNC3(vlc_player_t *player, vlc_tick_t system_now,
                         vlc_tick_t *out_ts, float *out_pos)
{
    FUNC0(&player->timer.lock);
    if (player->timer.best_source.point.system_date == VLC_TICK_INVALID)
    {
        FUNC1(&player->timer.lock);
        return VLC_EGENERIC;
    }
    int ret =
        FUNC2(&player->timer.best_source.point,
                                           system_now, out_ts, out_pos);

    FUNC1(&player->timer.lock);
    return ret;
}