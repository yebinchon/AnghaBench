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
struct TYPE_8__ {int /*<<< orphan*/  player; int /*<<< orphan*/  current; TYPE_2__ items; } ;
typedef  TYPE_1__ vlc_playlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,size_t,size_t) ; 

void
FUNC8(vlc_playlist_t *playlist, size_t index, size_t count)
{
    FUNC2(playlist);
    FUNC0(index < playlist->items.size);

    FUNC4(playlist, index, count);

    for (size_t i = 0; i < count; ++i)
        FUNC6(playlist->items.data[index + i]);

    FUNC7(&playlist->items, index, count);

    bool current_media_changed = FUNC3(playlist, index,
                                                           count);
    if (current_media_changed)
        FUNC5(playlist, playlist->current);
    else
        FUNC1(playlist->player);
}