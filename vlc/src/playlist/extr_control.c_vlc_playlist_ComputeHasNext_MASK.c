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
struct TYPE_6__ {int order; } ;
typedef  TYPE_1__ vlc_playlist_t ;

/* Variables and functions */
#define  VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL 129 
#define  VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

bool
FUNC4(vlc_playlist_t *playlist)
{
    FUNC1(playlist);
    switch (playlist->order)
    {
        case VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL:
            return FUNC2(playlist);
        case VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM:
            return FUNC3(playlist);
        default:
            FUNC0();
    }
}