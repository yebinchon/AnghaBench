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
struct TYPE_10__ {int order; scalar_t__ repeat; int /*<<< orphan*/  player; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; int /*<<< orphan*/  randomizer; TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
#define  VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL 129 
#define  VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM 128 
 scalar_t__ VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  on_playback_order_changed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static void
FUNC15(vlc_playlist_t *playlist)
{
    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        /* randomizer is expected to be empty at this point */
        FUNC3(FUNC6(&playlist->randomizer) == 0);
        FUNC4(&playlist->randomizer, playlist->items.data,
                       playlist->items.size);

        bool loop = playlist->repeat == VLC_PLAYLIST_PLAYBACK_REPEAT_ALL;
        FUNC7(&playlist->randomizer, loop);
    }
    else
        /* we don't use the randomizer anymore */
        FUNC5(&playlist->randomizer);

    struct vlc_playlist_state state;
    FUNC14(playlist, &state);

    playlist->has_prev = FUNC11(playlist);
    playlist->has_next = FUNC10(playlist);

    FUNC12(playlist, on_playback_order_changed, playlist->order);
    FUNC13(playlist, &state);

    char const *state_text = NULL;
    switch (playlist->order)
    {
        case VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL:
            state_text = FUNC0("Off");
            break;
        case VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM:
            state_text = FUNC0("On");
            break;
    }
    FUNC9(playlist->player,
                           FUNC2("Random: %s"), FUNC8(state_text));
    /* vlc_player_osd_Message() does nothing in tests */
    FUNC1(state_text);
}