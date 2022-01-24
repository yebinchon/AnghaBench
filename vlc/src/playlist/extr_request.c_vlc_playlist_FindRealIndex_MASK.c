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
typedef  int ssize_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC3(vlc_playlist_t *playlist, vlc_playlist_item_t *item,
                           ssize_t index_hint)
{
    if (index_hint != -1 && (size_t) index_hint < FUNC0(playlist))
    {
        if (item == FUNC1(playlist, index_hint))
            /* we are lucky */
            return index_hint;
    }

    /* we are unlucky, we need to find the item */
    return FUNC2(playlist, item);
}