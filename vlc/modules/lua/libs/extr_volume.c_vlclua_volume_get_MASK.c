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
 float AOUT_VOLUME_DEFAULT ; 
 long FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long) ; 
 float FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(lua_State *L)
{
    vlc_playlist_t *playlist = FUNC4(L);
    vlc_player_t *player = FUNC3(playlist);

    float volume = FUNC2(player);

    long i_volume = FUNC0(volume * AOUT_VOLUME_DEFAULT);
    FUNC1(L, i_volume);
    return 1;
}