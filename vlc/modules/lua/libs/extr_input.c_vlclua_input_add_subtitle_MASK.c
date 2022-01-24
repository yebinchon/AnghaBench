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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_ES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(lua_State *L, bool b_path)
{
    vlc_player_t *player = FUNC8(L);

    if (!FUNC4(L, 1))
        return FUNC2( L, "vlc.player.add_subtitle() usage: (path, autoselect=false)" );

    bool autoselect = false;
    if (FUNC3(L) >= 2)
        autoselect = FUNC5(L, 2);

    const char *sub = FUNC1(L, 1);
    char *mrl;
    if (b_path)
        mrl = FUNC6(sub, NULL);

    const char *uri = b_path ? mrl : sub;
    FUNC7(player, SPU_ES, uri, autoselect, true, false);
    if (b_path)
        FUNC0(mrl);

    return 1;
}