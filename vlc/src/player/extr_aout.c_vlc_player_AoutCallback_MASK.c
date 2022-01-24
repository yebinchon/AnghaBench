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
struct TYPE_4__ {scalar_t__ f_float; scalar_t__ b_bool; char* psz_string; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  on_device_changed ; 
 int /*<<< orphan*/  on_mute_changed ; 
 int /*<<< orphan*/  on_volume_changed ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(vlc_object_t *this, const char *var,
                        vlc_value_t oldval, vlc_value_t newval, void *data)
{
    vlc_player_t *player = data;

    if (FUNC0(var, "volume") == 0)
    {
        if (oldval.f_float != newval.f_float)
        {
            FUNC2(player, on_volume_changed,
                                      (audio_output_t *)this, newval.f_float);
            FUNC3(player, false);
        }
    }
    else if (FUNC0(var, "mute") == 0)
    {
        if (oldval.b_bool != newval.b_bool)
        {
            FUNC2(player, on_mute_changed,
                                      (audio_output_t *)this, newval.b_bool);
            FUNC3(player, true);
        }
    }
    else if (FUNC0(var, "device") == 0)
    {
        const char *old = oldval.psz_string;
        const char *new = newval.psz_string;
        /* support NULL values for string comparison */
        if (old != new && (!old || !new || FUNC0(old, new)))
            FUNC2(player, on_device_changed,
                                      (audio_output_t *)this, newval.psz_string);
    }
    else
        FUNC1();

    return VLC_SUCCESS;
    (void) this;
}