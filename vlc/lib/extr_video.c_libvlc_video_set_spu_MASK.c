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
 int /*<<< orphan*/  VLC_PLAYER_SELECT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct vlc_player_track* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vlc_player_track const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7( libvlc_media_player_t *p_mi, int i_spu )
{
    int i_ret = -1;

    vlc_player_t *player = p_mi->player;
    FUNC4(player);

    size_t count = FUNC3(player);
    for (size_t i = 0; i < count; i++)
    {
        const struct vlc_player_track *track =
            FUNC2(player, i);
        if (i_spu == FUNC1(track->es_id))
        {
            /* found */
            FUNC5(player, track, VLC_PLAYER_SELECT_EXCLUSIVE);
            i_ret = 0;
            goto end;
        }
    }
    FUNC0( "Track identifier not found" );
end:
    FUNC6(player);
    return i_ret;
}