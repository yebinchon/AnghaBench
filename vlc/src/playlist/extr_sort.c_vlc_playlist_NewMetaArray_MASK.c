#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_sort_criterion {int dummy; } ;
struct vlc_playlist_item_meta {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct vlc_playlist_item_meta** FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_playlist_item_meta**,size_t) ; 
 struct vlc_playlist_item_meta* FUNC3 (int /*<<< orphan*/ ,struct vlc_playlist_sort_criterion const*,size_t) ; 

__attribute__((used)) static struct vlc_playlist_item_meta **
FUNC4(vlc_playlist_t *playlist,
        const struct vlc_playlist_sort_criterion criteria[], size_t count)
{
    struct vlc_playlist_item_meta **array =
            FUNC1(playlist->items.size, sizeof(*array));

    if (FUNC0(!array))
        return NULL;

    size_t i;
    for (i = 0; i < playlist->items.size; ++i)
    {
        array[i] = FUNC3(playlist->items.data[i],
                                              criteria, count);
        if (FUNC0(!array[i]))
            break;
    }

    if (i < playlist->items.size)
    {
        /* allocation failure */
        FUNC2(array, i);
        return NULL;
    }

    return array;
}