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
struct vlc_player_track {scalar_t__ selected; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 struct vlc_player_track* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  VLC_PLAYER_SELECT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vlc_player_track const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vlc_player_track const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(lua_State *L,
                                       enum es_format_category_e cat,
                                       int id)
{
    vlc_player_t *player = FUNC5(L);

    FUNC1(player);

    const struct vlc_player_track *track = FUNC0(player, cat, id);
    if (track) {
        if (track->selected)
            FUNC4(player, track);
        else
            FUNC2(player, track, VLC_PLAYER_SELECT_EXCLUSIVE);
    }

    FUNC3(player);

    return 0;
}