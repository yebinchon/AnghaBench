#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ order; int repeat; int /*<<< orphan*/  player; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; int /*<<< orphan*/  randomizer; } ;
typedef  TYPE_1__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_ALL 130 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT 129 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_NONE 128 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  on_playback_repeat_changed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static void
FUNC11(vlc_playlist_t *playlist)
{
    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        bool loop = playlist->repeat == VLC_PLAYLIST_PLAYBACK_REPEAT_ALL;
        FUNC3(&playlist->randomizer, loop);
    }

    struct vlc_playlist_state state;
    FUNC10(playlist, &state);

    playlist->has_prev = FUNC7(playlist);
    playlist->has_next = FUNC6(playlist);

    FUNC8(playlist, on_playback_repeat_changed, playlist->repeat);
    FUNC9(playlist, &state);

    char const *state_text = NULL;
    switch (playlist->repeat)
    {
        case VLC_PLAYLIST_PLAYBACK_REPEAT_NONE:
            state_text = FUNC0("Off");
            break;
        case VLC_PLAYLIST_PLAYBACK_REPEAT_ALL:
            state_text = FUNC0("All");
            break;
        case VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT:
            state_text = FUNC0("One");
            break;
    }
    FUNC5(playlist->player,
                           FUNC2("Loop: %s"), FUNC4(state_text));
    /* vlc_player_osd_Message() does nothing in tests */
    FUNC1(state_text);
}