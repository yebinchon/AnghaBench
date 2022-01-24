#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t size; int /*<<< orphan*/ ** data; } ;
struct TYPE_8__ {scalar_t__ order; int /*<<< orphan*/  randomizer; TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*,int) ; 

int
FUNC5(vlc_playlist_t *playlist, ssize_t index)
{
    FUNC2(playlist);
    FUNC0(index == -1 || (size_t) index < playlist->items.size);

    int ret = FUNC4(playlist, index);
    if (ret != VLC_SUCCESS)
        return ret;

    if (index != -1 && playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        vlc_playlist_item_t *item = playlist->items.data[index];
        FUNC1(&playlist->randomizer, item);
    }

    FUNC3(playlist, index);
    return VLC_SUCCESS;
}