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
 int VLC_SUCCESS ; 
 long FUNC0 (float) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,float*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(lua_State *L)
{
    vlc_playlist_t *playlist = FUNC5(L);
    vlc_player_t *player = FUNC4(playlist);

    float volume;
    int steps = FUNC1(L, 1, 1);
    int res = FUNC3(player, steps, &volume);

    long i_volume = res == VLC_SUCCESS ? FUNC0(volume * AOUT_VOLUME_DEFAULT)
                                       : 0;
    FUNC2(L, i_volume);
    return 1;
}