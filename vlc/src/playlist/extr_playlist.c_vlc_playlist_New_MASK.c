#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int current; int has_prev; int has_next; int auto_preparse; int /*<<< orphan*/ * libvlc; scalar_t__ idgen; int /*<<< orphan*/  order; int /*<<< orphan*/  repeat; int /*<<< orphan*/  listeners; int /*<<< orphan*/  randomizer; int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ; 
 int /*<<< orphan*/  VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

vlc_playlist_t *
FUNC10(vlc_object_t *parent)
{
    vlc_playlist_t *playlist = FUNC2(sizeof(*playlist));
    if (FUNC4(!playlist))
        return NULL;

    bool ok = FUNC8(playlist, parent);
    if (FUNC4(!ok))
    {
        FUNC1(playlist);
        return NULL;
    }

    FUNC9(&playlist->items);
    FUNC3(&playlist->randomizer);
    playlist->current = -1;
    playlist->has_prev = false;
    playlist->has_next = false;
    FUNC6(&playlist->listeners);
    playlist->repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;
    playlist->order = VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;
    playlist->idgen = 0;
#ifdef TEST_PLAYLIST
    playlist->libvlc = NULL;
    playlist->auto_preparse = false;
#else
    FUNC0(parent);
    playlist->libvlc = FUNC7(parent);
    playlist->auto_preparse = FUNC5(parent, "auto-preparse");
#endif

    return playlist;
}