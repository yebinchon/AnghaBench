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
struct vlc_playlist_sort_criterion {int /*<<< orphan*/  order; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_PLAYLIST_SORT_ORDER_ASCENDING ; 
 int /*<<< orphan*/  VLC_PLAYLIST_SORT_ORDER_DESCENDING ; 
 int VLC_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct vlc_playlist_sort_criterion*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11( lua_State *L )
{
    vlc_playlist_t *playlist = FUNC9(L);

    const char *keyname = FUNC0(L, 1);

    int ret;
    if (!FUNC3(keyname, "random"))
    {
        /* sort randomly -> shuffle */
        FUNC4(playlist);
        FUNC5(playlist);
        FUNC7(playlist);
        ret = VLC_SUCCESS;
    }
    else
    {
        struct vlc_playlist_sort_criterion criterion;
        if (!FUNC8(keyname, &criterion.key))
            return FUNC1(L, "Invalid search key.");
        criterion.order = FUNC2(L, 2, 0)
                        ? VLC_PLAYLIST_SORT_ORDER_DESCENDING
                        : VLC_PLAYLIST_SORT_ORDER_ASCENDING;

        FUNC4(playlist);
        ret = FUNC6(playlist, &criterion, 1);
        FUNC7(playlist);
    }
    return FUNC10(L, ret);
}