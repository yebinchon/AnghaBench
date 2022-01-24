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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_3__ {int /*<<< orphan*/  resource; } ;
typedef  TYPE_1__ vlc_player_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/ ** FUNC2 (int,int) ; 

vout_thread_t **
FUNC3(vlc_player_t *player, size_t *count)
{
    vout_thread_t **vouts;
    FUNC1(player->resource, &vouts, count);

    if (*count == 0)
    {
        vouts = FUNC2(1, sizeof(*vouts));
        if (vouts)
        {
            *count = 1;
            vouts[0] = FUNC0(player->resource);
        }
    }
    return vouts;
}