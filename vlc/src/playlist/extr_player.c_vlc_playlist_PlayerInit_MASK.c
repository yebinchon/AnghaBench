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
struct TYPE_6__ {int /*<<< orphan*/  player; int /*<<< orphan*/  player_listener; } ;
typedef  TYPE_1__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_PLAYER_LOCK_NORMAL ; 
 int /*<<< orphan*/  player_callbacks ; 
 int /*<<< orphan*/  player_media_provider ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

bool
FUNC7(vlc_playlist_t *playlist, vlc_object_t *parent)
{
    playlist->player = FUNC4(parent, VLC_PLAYER_LOCK_NORMAL,
                                      &player_media_provider, playlist);
    if (FUNC0(!playlist->player))
        return false;

    FUNC3(playlist->player);
    /* the playlist and the player share the lock */
    FUNC6(playlist);
    playlist->player_listener = FUNC1(playlist->player,
                                                       &player_callbacks,
                                                       playlist);
    FUNC5(playlist->player);
    if (FUNC0(!playlist->player_listener))
    {
        FUNC2(playlist->player);
        return false;
    }
    return true;
}