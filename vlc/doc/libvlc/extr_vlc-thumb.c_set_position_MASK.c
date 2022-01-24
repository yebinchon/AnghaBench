#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
typedef  int /*<<< orphan*/  libvlc_event_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_THUMBNAIL_POSITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  callback ; 
 int done ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  libvlc_MediaPlayerPositionChanged ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(libvlc_media_player_t *mp)
{
    libvlc_event_manager_t *em = FUNC4(mp);
    FUNC0(em);

    FUNC2(em, libvlc_MediaPlayerPositionChanged, callback, NULL);
    done = false;
    FUNC5(mp, VLC_THUMBNAIL_POSITION);
    FUNC1("Couldn't set position");
    FUNC3(em, libvlc_MediaPlayerPositionChanged, callback, NULL);
}