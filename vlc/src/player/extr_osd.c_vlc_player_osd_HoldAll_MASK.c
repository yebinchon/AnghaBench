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
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_OSD ; 
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_OSD_HSLIDER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vout_thread_t **
FUNC2(vlc_player_t *player, size_t *count)
{
    vout_thread_t **vouts;
    FUNC0(player->resource, &vouts, count);

    for (size_t i = 0; i < *count; ++i)
    {
        FUNC1(vouts[i], VOUT_SPU_CHANNEL_OSD);
        FUNC1(vouts[i], VOUT_SPU_CHANNEL_OSD_HSLIDER);
        FUNC1(vouts[i], VOUT_SPU_CHANNEL_OSD_HSLIDER);
    }
    return vouts;
}