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
struct TYPE_6__ {scalar_t__ repeat; int current; } ;
typedef  TYPE_1__ vlc_playlist_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static ssize_t
FUNC3(vlc_playlist_t *playlist)
{
    FUNC0(playlist);
    if (playlist->repeat == VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT)
        return playlist->current;
    if (!FUNC1(playlist))
        return -1;
    return FUNC2(playlist);
}