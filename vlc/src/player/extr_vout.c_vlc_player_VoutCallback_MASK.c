#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_4__ {scalar_t__ b_bool; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  on_fullscreen_changed ; 
 int /*<<< orphan*/  on_wallpaper_mode_changed ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(vlc_object_t *this, const char *var,
                        vlc_value_t oldval, vlc_value_t newval, void *data)
{
    vlc_player_t *player = data;

    if (FUNC0(var, "fullscreen") == 0)
    {
        if (oldval.b_bool != newval.b_bool )
            FUNC2(player, on_fullscreen_changed,
                                      (vout_thread_t *)this, newval.b_bool);
    }
    else if (FUNC0(var, "video-wallpaper") == 0)
    {
        if (oldval.b_bool != newval.b_bool )
            FUNC2(player, on_wallpaper_mode_changed,
                                      (vout_thread_t *)this, newval.b_bool);
    }
    else
        FUNC1();

    return VLC_SUCCESS;
}