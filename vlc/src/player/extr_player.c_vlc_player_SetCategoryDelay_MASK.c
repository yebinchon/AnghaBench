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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_input {int /*<<< orphan*/  thread; int /*<<< orphan*/ * cat_delays; } ;
struct TYPE_3__ {int /*<<< orphan*/  cat_delay; } ;
typedef  TYPE_1__ input_control_param_t ;
typedef  enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 int AUDIO_ES ; 
 int /*<<< orphan*/  INPUT_CONTROL_SET_CATEGORY_DELAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SPU_ES ; 
 int VLC_EGENERIC ; 
 int VLC_PLAYER_WHENCE_ABSOLUTE ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  on_category_delay_changed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct vlc_player_input* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC7(vlc_player_t *player, enum es_format_category_e cat,
                            vlc_tick_t delay, enum vlc_player_whence whence)
{
    bool absolute = whence == VLC_PLAYER_WHENCE_ABSOLUTE;
    struct vlc_player_input *input = FUNC5(player);
    if (!input)
        return VLC_EGENERIC;

    if (cat != AUDIO_ES && cat != SPU_ES)
        return VLC_EGENERIC;
    vlc_tick_t *cat_delay = &input->cat_delays[cat];

    if (absolute)
        *cat_delay = delay;
    else
    {
        *cat_delay += delay;
        delay = *cat_delay;
    }

    const input_control_param_t param = { .cat_delay = { cat, delay } };
    int ret = FUNC3(input->thread, INPUT_CONTROL_SET_CATEGORY_DELAY,
                                &param);
    if (ret == VLC_SUCCESS)
    {
        FUNC6(player, FUNC1("%s delay: %i ms"),
                               FUNC2(cat),
                               (int)FUNC0(delay));
        FUNC4(player, on_category_delay_changed, cat, delay);
    }
    return VLC_SUCCESS;
}