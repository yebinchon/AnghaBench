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
struct vlc_player_track {int /*<<< orphan*/  es_id; } ;
struct TYPE_3__ {int /*<<< orphan*/ * player; } ;
typedef  TYPE_1__ libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_ES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct vlc_player_track* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4( libvlc_media_player_t *p_mi )
{
    vlc_player_t *player = p_mi->player;
    FUNC2(player);

    const struct vlc_player_track *track =
        FUNC1(player, SPU_ES);
    int i_spu = track ? FUNC0(track->es_id) : -1;

    FUNC3(player);
    return i_spu;
}