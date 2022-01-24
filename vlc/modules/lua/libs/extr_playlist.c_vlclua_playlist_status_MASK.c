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
typedef  enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;

/* Variables and functions */
#define  VLC_PLAYER_STATE_PAUSED 132 
#define  VLC_PLAYER_STATE_PLAYING 131 
#define  VLC_PLAYER_STATE_STARTED 130 
#define  VLC_PLAYER_STATE_STOPPED 129 
#define  VLC_PLAYER_STATE_STOPPING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(lua_State *L)
{
    vlc_playlist_t *playlist = FUNC5(L);

    vlc_player_t *player = FUNC4(playlist);
    FUNC2(player);
    enum vlc_player_state state = FUNC1(player);
    FUNC3(player);

    switch (state)
    {
        case VLC_PLAYER_STATE_STOPPED:
            FUNC0(L, "stopped");
            break;
        case VLC_PLAYER_STATE_STARTED:
            FUNC0(L, "started");
            break;
        case VLC_PLAYER_STATE_PLAYING:
            FUNC0(L, "playing");
            break;
        case VLC_PLAYER_STATE_PAUSED:
            FUNC0(L, "paused");
            break;
        case VLC_PLAYER_STATE_STOPPING:
            FUNC0(L, "stopping");
            break;
        default:
            FUNC0(L, "unknown");
    }
    return 1;
}