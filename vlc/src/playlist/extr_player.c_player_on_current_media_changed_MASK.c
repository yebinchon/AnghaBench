#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__** data; } ;
struct TYPE_12__ {int current; scalar_t__ order; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; int /*<<< orphan*/  randomizer; TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
struct TYPE_13__ {int /*<<< orphan*/ * media; } ;
typedef  TYPE_3__ vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_playlist_state {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static void
FUNC8(vlc_player_t *player, input_item_t *new_media,
                                void *userdata)
{
    FUNC0(player);
    vlc_playlist_t *playlist = userdata;

    /* the playlist and the player share the lock */
    FUNC2(playlist);

    input_item_t *media = playlist->current != -1
                        ? playlist->items.data[playlist->current]->media
                        : NULL;
    if (new_media == media)
        /* nothing to do */
        return;

    ssize_t index;
    if (new_media)
    {
        index = FUNC5(playlist, new_media);
        if (index != -1)
        {
            vlc_playlist_item_t *item = playlist->items.data[index];
            if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
                FUNC1(&playlist->randomizer, item);
        }
    }
    else
        index = -1;

    struct vlc_playlist_state state;
    FUNC7(playlist, &state);

    playlist->current = index;
    playlist->has_prev = FUNC4(playlist);
    playlist->has_next = FUNC3(playlist);

    FUNC6(playlist, &state);
}