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
struct vlc_player_input {int started; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(struct vlc_player_input *input)
{
    int ret = FUNC0(input->thread);
    if (ret != VLC_SUCCESS)
        return ret;
    input->started = true;
    return ret;
}