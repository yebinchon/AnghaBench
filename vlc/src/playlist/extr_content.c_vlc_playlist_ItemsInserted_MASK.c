#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__** data; } ;
struct TYPE_14__ {scalar_t__ order; scalar_t__ current; TYPE_1__ items; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; int /*<<< orphan*/  randomizer; } ;
typedef  TYPE_2__ vlc_playlist_t ;
struct TYPE_15__ {int /*<<< orphan*/  media; } ;
typedef  TYPE_3__ vlc_playlist_item_t ;
struct vlc_playlist_state {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int /*<<< orphan*/  on_items_added ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__**,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,size_t,TYPE_3__**,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static void
FUNC7(vlc_playlist_t *playlist, size_t index, size_t count)
{
    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
        FUNC0(&playlist->randomizer,
                       &playlist->items.data[index], count);

    struct vlc_playlist_state state;
    FUNC6(playlist, &state);

    if (playlist->current >= (ssize_t) index)
        playlist->current += count;
    playlist->has_prev = FUNC3(playlist);
    playlist->has_next = FUNC2(playlist);

    vlc_playlist_item_t **items = &playlist->items.data[index];
    FUNC4(playlist, on_items_added, index, items, count);
    FUNC5(playlist, &state);

    for (size_t i = index; i < index + count; ++i)
    {
        vlc_playlist_item_t *item = playlist->items.data[i];
        FUNC1(playlist, item->media);
    }
}