#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t size; int /*<<< orphan*/ * data; } ;
struct TYPE_11__ {scalar_t__ current; int /*<<< orphan*/  player; TYPE_2__ items; } ;
typedef  TYPE_1__ vlc_playlist_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,size_t) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ * const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 
 int FUNC6 (TYPE_1__*,size_t,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,size_t,size_t) ; 

int
FUNC10(vlc_playlist_t *playlist, size_t index,
                    input_item_t *const media[], size_t count)
{
    FUNC2(playlist);
    FUNC0(index < playlist->items.size);

    if (count == 0)
        FUNC5(playlist, index);
    else
    {
        int ret = FUNC6(playlist, index, media[0]);
        if (ret != VLC_SUCCESS)
            return ret;

        if (count > 1)
        {
            /* make space in the vector */
            if (!FUNC8(&playlist->items, index + 1, count - 1))
                return VLC_ENOMEM;

            /* create playlist items in place */
            ret = FUNC4(playlist, &media[1], count - 1,
                                            &playlist->items.data[index + 1]);
            if (ret != VLC_SUCCESS)
            {
                /* we were optimistic, it failed, restore the vector state */
                FUNC9(&playlist->items, index + 1, count - 1);
                return ret;
            }
            FUNC3(playlist, index + 1, count - 1);
        }

        if ((ssize_t) index == playlist->current)
            FUNC7(playlist, playlist->current);
        else
            FUNC1(playlist->player);
    }

    return VLC_SUCCESS;
}