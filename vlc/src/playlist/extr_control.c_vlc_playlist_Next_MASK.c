#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ ** data; } ;
struct TYPE_10__ {scalar_t__ order; int /*<<< orphan*/  player; TYPE_1__ items; int /*<<< orphan*/  randomizer; } ;
typedef  TYPE_2__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int FUNC9 (TYPE_2__*,int) ; 

int
FUNC10(vlc_playlist_t *playlist)
{
    FUNC5(playlist);

    if (!FUNC6(playlist))
        return VLC_EGENERIC;

    ssize_t index = FUNC7(playlist);
    FUNC2(index != -1);

    int ret = FUNC9(playlist, index);
    if (ret != VLC_SUCCESS)
        return ret;

    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        /* mark the item as selected in the randomizer */
        vlc_playlist_item_t *selected = FUNC3(&playlist->randomizer);
        FUNC2(selected == playlist->items.data[index]);
        FUNC0(selected);
    }

    FUNC8(playlist, index);
    FUNC4(playlist->player, FUNC1("Next"));
    return VLC_SUCCESS;
}