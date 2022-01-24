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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    uint64_t item_id = FUNC0(L, 1);
    uint64_t target_id = FUNC0(L, 2);
    vlc_playlist_t *playlist = FUNC5(L);

    int ret;

    FUNC2(playlist);
    ssize_t item_index = FUNC1(playlist, item_id);
    ssize_t target_index = FUNC1(playlist, target_id);
    if (item_index == -1 || target_index == -1)
        ret = -1;
    else
    {
        /* if the current item was before the target, moving it shifts the
         * target item by one */
        size_t new_index = item_index <= target_index ? target_index
                                                      : target_index + 1;
        FUNC3(playlist, item_index, new_index);
        ret = VLC_SUCCESS;
    }
    FUNC4(playlist);

    return FUNC6(L, ret);
}