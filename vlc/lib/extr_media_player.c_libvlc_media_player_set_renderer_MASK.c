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
typedef  int /*<<< orphan*/  vlc_renderer_item_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  libvlc_renderer_item_t ;
struct TYPE_3__ {int /*<<< orphan*/ * player; } ;
typedef  TYPE_1__ libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4( libvlc_media_player_t *p_mi,
                                      libvlc_renderer_item_t *p_litem )
{
    vlc_player_t *player = p_mi->player;
    FUNC1(player);

    vlc_renderer_item_t *renderer = FUNC0(p_litem);
    FUNC2(player, renderer);

    FUNC3(player);
    return 0;
}