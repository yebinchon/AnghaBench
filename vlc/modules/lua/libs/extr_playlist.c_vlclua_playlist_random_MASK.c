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
 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ; 
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(lua_State *L)
{
    vlc_playlist_t *playlist = FUNC8(L);
    int top = FUNC0(L);
    if (top > 1)
        return FUNC7(L);

    FUNC4(playlist);

    bool enable;
    if (top == 0)
    {
        enum vlc_playlist_playback_order order =
                FUNC3(playlist);
        enable = order != VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM;
    }
    else
    {
        /* use the provided value */
        enable = FUNC2(L);
    }

    enum vlc_playlist_playback_order new_order = enable
                                    ? VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM
                                    : VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;

    FUNC5(playlist, new_order);

    FUNC6(playlist);

    FUNC1(L, enable);
    return 1;
}