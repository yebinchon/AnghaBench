#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t size; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int /*<<< orphan*/  player; TYPE_2__ items; } ;
typedef  TYPE_1__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,size_t) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ * const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t,size_t) ; 

int
FUNC7(vlc_playlist_t *playlist, size_t index,
                    input_item_t *const media[], size_t count)
{
    FUNC2(playlist);
    FUNC0(index <= playlist->items.size);

    /* make space in the vector */
    if (!FUNC5(&playlist->items, index, count))
        return VLC_ENOMEM;

    /* create playlist items in place */
    int ret = FUNC4(playlist, media, count,
                                        &playlist->items.data[index]);
    if (ret != VLC_SUCCESS)
    {
        /* we were optimistic, it failed, restore the vector state */
        FUNC6(&playlist->items, index, count);
        return ret;
    }

    FUNC3(playlist, index, count);
    FUNC1(playlist->player);

    return VLC_SUCCESS;
}