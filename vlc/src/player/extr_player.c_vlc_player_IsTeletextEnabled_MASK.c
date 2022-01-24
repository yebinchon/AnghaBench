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
struct vlc_player_input {int /*<<< orphan*/  teletext_menu; scalar_t__ teletext_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vlc_player_input* FUNC1 (int /*<<< orphan*/ *) ; 

bool
FUNC2(vlc_player_t *player)
{
    struct vlc_player_input *input = FUNC1(player);
    if (input && input->teletext_enabled)
    {
        FUNC0(input->teletext_menu);
        return true;
    }
    return false;
}