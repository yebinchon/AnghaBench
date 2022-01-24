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
struct vlc_player_input {float signal_quality; float signal_strength; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vlc_player_input* FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(vlc_player_t *player, float *quality, float *strength)
{
    FUNC0(quality && strength);
    struct vlc_player_input *input = FUNC1(player);

    if (input && input->signal_quality >= 0 && input->signal_strength >= 0)
    {
        *quality = input->signal_quality;
        *strength = input->signal_strength;
        return VLC_SUCCESS;
    }
    return VLC_EGENERIC;
}