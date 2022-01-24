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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_PLAYER_WHENCE_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4( libvlc_media_player_t *p_mi, int64_t i_delay )
{
    vlc_player_t *player = p_mi->player;
    FUNC1(player);

    FUNC2(player, FUNC0(i_delay),
                             VLC_PLAYER_WHENCE_ABSOLUTE);

    FUNC3(player);
    /* may not fail anymore, keep int not to break the API */
    return 0;
}