#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_input {TYPE_2__* teletext_menu; } ;
struct TYPE_3__ {int /*<<< orphan*/  es_id; } ;
struct TYPE_4__ {TYPE_1__ t; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_PLAYER_SELECT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vlc_player_input* FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(vlc_player_t *player, bool enabled)
{
    struct vlc_player_input *input = FUNC2(player);
    if (!input || !input->teletext_menu)
        return;
    if (enabled)
        FUNC0(player, input->teletext_menu->t.es_id,
                              VLC_PLAYER_SELECT_EXCLUSIVE);
    else
        FUNC1(player, input->teletext_menu->t.es_id);
}