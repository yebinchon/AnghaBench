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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(lua_State *L, bool play)
{
    vlc_object_t *obj = FUNC13(L);
    vlc_playlist_t *playlist = FUNC12(L);
    int count = 0;

    /* playlist */
    if (!FUNC1(L, -1))
    {
        FUNC6(obj, "Playlist should be a table.");
        return 0;
    }

    FUNC5(L);

    FUNC9(playlist);

    /* playlist nil */
    while (FUNC2(L, -2))
    {
        input_item_t *item = FUNC14(obj, L);
        if (item != NULL)
        {
            int ret = FUNC7(playlist, item);
            if (ret == VLC_SUCCESS)
            {
                count++;
                if (play)
                {
                    size_t last = FUNC8(playlist) - 1;
                    FUNC10(playlist, last);
                }
            }
            FUNC0(item);
        }
        /* pop the value, keep the key for the next lua_next() call */
        FUNC3(L, 1);
    }
    /* playlist */

    FUNC11(playlist);

    FUNC4(L, count);
    return 1;
}