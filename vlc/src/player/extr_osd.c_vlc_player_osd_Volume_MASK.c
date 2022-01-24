#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSD_MUTE_ICON ; 
 int /*<<< orphan*/  OSD_VERT_SLIDER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (float) ; 
 float FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,size_t,int,int /*<<< orphan*/ ) ; 

void
FUNC10(vlc_player_t *player, bool mute_action)
{
    size_t count;
    vout_thread_t **vouts = FUNC4(player, &count);

    bool mute = FUNC3(player);
    int volume = FUNC1(FUNC2(player) * 100.f);
    if (mute_action && mute)
        FUNC7(vouts, count, OSD_MUTE_ICON);
    else
    {
        if (FUNC6(player))
            FUNC9(vouts, count, volume, OSD_VERT_SLIDER);
        FUNC8(vouts, count, FUNC0("Volume: %ld%%"), volume);
    }

    FUNC5(player, vouts, count);
}