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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_PLAYER_SEEK_PRECISE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(lua_State *L,
                                       enum vlc_player_whence whence)
{
    int usec = FUNC1(L, 1);
    vlc_tick_t time = FUNC0(usec);

    vlc_player_t *player = FUNC5(L);

    FUNC2(player);
    FUNC3(player, time, VLC_PLAYER_SEEK_PRECISE, whence);
    FUNC4(player);

    return 0;
}