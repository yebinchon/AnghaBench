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
typedef  int /*<<< orphan*/  lua_State ;
typedef  enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;

/* Variables and functions */
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(lua_State *L)
{
    vlc_playlist_t *playlist = FUNC4(L);

    FUNC2(playlist);
    enum vlc_playlist_playback_order order =
            FUNC1(playlist);
    bool result = order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM;
    FUNC3(playlist);

    FUNC0(L, result);
    return 1;
}