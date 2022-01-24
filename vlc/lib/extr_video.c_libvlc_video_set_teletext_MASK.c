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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_3__ {int /*<<< orphan*/ * player; } ;
typedef  TYPE_1__ libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int libvlc_teletext_key_blue ; 
 int libvlc_teletext_key_green ; 
 int libvlc_teletext_key_index ; 
 int libvlc_teletext_key_red ; 
 int libvlc_teletext_key_yellow ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( libvlc_media_player_t *p_mi, int i_page )
{
    vlc_player_t *player = p_mi->player;
    FUNC1(player);

    if (i_page == 0)
        FUNC3(player, false);
    else if (i_page > 0)
    {
        if (i_page >= 1000)
        {
            bool is_key = i_page == libvlc_teletext_key_red
                       || i_page == libvlc_teletext_key_green
                       || i_page == libvlc_teletext_key_yellow
                       || i_page == libvlc_teletext_key_blue
                       || i_page == libvlc_teletext_key_index;
            if (!is_key)
            {
                FUNC0("Invalid key action");
                return;
            }
        }
        FUNC3(player, true);
        FUNC2(player, i_page);
    }
    else
    {
        FUNC0("Invalid page number");
        return;
    }

    FUNC4(player);
}