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
typedef  int /*<<< orphan*/  xsubi ;
struct TYPE_11__ {int size; int /*<<< orphan*/ ** data; } ;
struct TYPE_12__ {int current; TYPE_1__ items; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; } ;
typedef  TYPE_2__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct vlc_playlist_state {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned short*) ; 
 int /*<<< orphan*/  on_items_reset ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned short*,int) ; 

void
FUNC9(vlc_playlist_t *playlist)
{
    FUNC1(playlist);
    if (playlist->items.size < 2)
        /* we use size_t (unsigned), so the following loop would be incorrect */
        return;

    vlc_playlist_item_t *current = playlist->current != -1
                                 ? playlist->items.data[playlist->current]
                                 : NULL;

    /* initialize separately instead of using vlc_lrand48() to avoid locking the
     * mutex once for each item */
    unsigned short xsubi[3];
    FUNC8(xsubi, sizeof(xsubi));

    /* Fisher-Yates shuffle */
    for (size_t i = playlist->items.size - 1; i != 0; --i)
    {
        size_t selected = (size_t) (FUNC0(xsubi) % (i + 1));

        /* swap items i and selected */
        vlc_playlist_item_t *tmp = playlist->items.data[i];
        playlist->items.data[i] = playlist->items.data[selected];
        playlist->items.data[selected] = tmp;
    }

    struct vlc_playlist_state state;
    if (current)
    {
        /* the current position have changed after the shuffle */
        FUNC7(playlist, &state);
        playlist->current = FUNC4(playlist, current);
        playlist->has_prev = FUNC3(playlist);
        playlist->has_next = FUNC2(playlist);
    }

    FUNC5(playlist, on_items_reset, playlist->items.data,
                        playlist->items.size);
    if (current)
        FUNC6(playlist, &state);
}