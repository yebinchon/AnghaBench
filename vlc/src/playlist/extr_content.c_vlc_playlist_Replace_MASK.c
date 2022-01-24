#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t size; int /*<<< orphan*/ ** data; } ;
struct TYPE_7__ {scalar_t__ order; TYPE_1__ items; int /*<<< orphan*/  randomizer; int /*<<< orphan*/  idgen; } ;
typedef  TYPE_2__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(vlc_playlist_t *playlist, size_t index,
                     input_item_t *media)
{
    FUNC3(playlist);
    FUNC0(index < playlist->items.size);

    uint64_t id = playlist->idgen++;
    vlc_playlist_item_t *item = FUNC5(media, id);
    if (!item)
        return VLC_ENOMEM;

    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        FUNC2(&playlist->randomizer,
                          &playlist->items.data[index], 1);
        FUNC1(&playlist->randomizer, &item, 1);
    }

    FUNC6(playlist->items.data[index]);
    playlist->items.data[index] = item;

    FUNC4(playlist, index);
    return VLC_SUCCESS;
}