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
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {scalar_t__ order; int current; TYPE_1__ items; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; int /*<<< orphan*/  randomizer; } ;
typedef  TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int /*<<< orphan*/  on_items_reset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static void
FUNC6(vlc_playlist_t *playlist)
{
    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
        FUNC0(&playlist->randomizer);

    struct vlc_playlist_state state;
    FUNC5(playlist, &state);

    playlist->current = -1;
    playlist->has_prev = FUNC2(playlist);
    playlist->has_next = FUNC1(playlist);

    FUNC3(playlist, on_items_reset, playlist->items.data,
                   playlist->items.size);
    FUNC4(playlist, &state);
}