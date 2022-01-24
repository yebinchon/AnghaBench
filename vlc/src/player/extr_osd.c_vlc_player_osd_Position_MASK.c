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
typedef  float vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_input {float length; } ;
typedef  enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;

/* Variables and functions */
 int MSTRTIME_MAX_SIZE ; 
 int /*<<< orphan*/  OSD_HOR_SLIDER ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int VLC_PLAYER_WHENCE_RELATIVE ; 
 float VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vlc_player_input*) ; 
 scalar_t__ FUNC3 (struct vlc_player_input*) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,size_t,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,size_t,float,int /*<<< orphan*/ ) ; 

void
FUNC9(vlc_player_t *player,
                        struct vlc_player_input *input, vlc_tick_t time,
                        float position, enum vlc_player_whence whence)
{
    if (input->length != VLC_TICK_INVALID)
    {
        if (time == VLC_TICK_INVALID)
            time = position * input->length;
        else
            position = time / (float) input->length;
    }

    size_t count;
    vout_thread_t **vouts = FUNC4(player, &count);

    if (time != VLC_TICK_INVALID)
    {
        if (whence == VLC_PLAYER_WHENCE_RELATIVE)
        {
            time += FUNC3(input); /* XXX: TOCTOU */
            if (time < 0)
                time = 0;
        }

        char time_text[MSTRTIME_MAX_SIZE];
        FUNC1(time_text, FUNC0(time));
        if (input->length != VLC_TICK_INVALID)
        {
            char len_text[MSTRTIME_MAX_SIZE];
            FUNC1(len_text, FUNC0(input->length));
            FUNC7(vouts, count, "%s / %s", time_text, len_text);
        }
        else
            FUNC7(vouts, count, "%s", time_text);
    }

    if (FUNC6(player))
    {
        if (whence == VLC_PLAYER_WHENCE_RELATIVE)
        {
            position += FUNC2(input); /* XXX: TOCTOU */
            if (position < 0.f)
                position = 0.f;
        }
        FUNC8(vouts, count, position * 100, OSD_HOR_SLIDER);
    }
    FUNC5(player, vouts, count);
}