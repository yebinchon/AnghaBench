#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_5__** data; } ;
struct TYPE_10__ {int current; TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_11__ {int /*<<< orphan*/ * media; } ;

/* Variables and functions */
 int /*<<< orphan*/  on_items_updated ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,TYPE_5__**,int) ; 

void
FUNC4(vlc_playlist_t *playlist, input_item_t *media)
{
    FUNC0(playlist);
    if (!FUNC1(playlist))
        /* no need to find the index if there are no listeners */
        return;

    ssize_t index;
    if (playlist->current != -1 &&
            playlist->items.data[playlist->current]->media == media)
        /* the player typically sends events for the current item, so we can
         * often avoid to search */
        index = playlist->current;
    else
    {
        /* linear search */
        index = FUNC2(playlist, media);
        if (index == -1)
            return;
    }
    FUNC3(playlist, on_items_updated, index,
                        &playlist->items.data[index], 1);
}