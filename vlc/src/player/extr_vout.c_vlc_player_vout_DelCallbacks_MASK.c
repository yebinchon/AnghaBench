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
 size_t FUNC0 (char**) ; 
 char** osd_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_player_VoutCallback ; 
 int /*<<< orphan*/  vlc_player_vout_OSDCallback ; 

void
FUNC2(vlc_player_t *player, vout_thread_t *vout)
{
    FUNC1(vout, "fullscreen", vlc_player_VoutCallback, player);
    FUNC1(vout, "video-wallpaper", vlc_player_VoutCallback, player);

    for (size_t i = 0; i < FUNC0(osd_vars); ++i)
        FUNC1(vout, osd_vars[i], vlc_player_vout_OSDCallback, player);
}