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
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ AOUT_VOLUME_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(lua_State *L)
{
    vlc_playlist_t *playlist = FUNC3(L);
    vlc_player_t *player = FUNC2(playlist);

    int i_volume = FUNC0(L, 1);
    if (i_volume < 0)
        i_volume = 0;

    float volume = i_volume / (float) AOUT_VOLUME_DEFAULT;
    int ret = FUNC1(player, volume);
    return FUNC4(L, ret);
}