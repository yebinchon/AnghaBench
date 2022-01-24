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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct size_vector {size_t size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 struct size_vector VLC_VECTOR_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const*,size_t,int /*<<< orphan*/ ,struct size_vector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct size_vector*) ; 
 int /*<<< orphan*/  FUNC6 (struct size_vector*,size_t) ; 

int
FUNC7(vlc_playlist_t *playlist,
                         vlc_playlist_item_t *const items[], size_t count,
                         size_t target, ssize_t index_hint)
{
    FUNC1(playlist);

    struct size_vector vector = VLC_VECTOR_INITIALIZER;
    if (!FUNC6(&vector, count))
        return VLC_ENOMEM;

    FUNC3(playlist, items, count, index_hint, &vector);

    size_t move_count = vector.size;
    if (move_count)
    {
        size_t size = FUNC2(playlist);
        FUNC0(size >= move_count);
        /* move at most to the end of the list */
        if (target + move_count > size)
            target = size - move_count;

        /* keep the items in the same order as the request (do not sort them) */
        FUNC4(playlist, vector.data, vector.size, target);
    }

    FUNC5(&vector);
    return VLC_SUCCESS;
}