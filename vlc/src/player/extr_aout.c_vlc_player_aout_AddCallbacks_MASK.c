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
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_player_AoutCallback ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(vlc_player_t *player)
{
    audio_output_t *aout = FUNC2(player);
    if (!aout)
        return;

    FUNC1(aout, "volume", vlc_player_AoutCallback, player);
    FUNC1(aout, "mute", vlc_player_AoutCallback, player);
    FUNC1(aout, "device", vlc_player_AoutCallback, player);

    FUNC0(aout);
}