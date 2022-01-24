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
typedef  int /*<<< orphan*/  vlc_sem_t ;
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
typedef  int /*<<< orphan*/  libvlc_event_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  libvlc_MediaPlayerEndReached ; 
 int /*<<< orphan*/  libvlc_MediaPlayerPaused ; 
 scalar_t__ libvlc_Playing ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  on_event ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(libvlc_media_player_t *mp)
{
    libvlc_event_manager_t *em = FUNC3(mp);

    vlc_sem_t sem;
    FUNC8(&sem, 0);

    int res;
    res = FUNC1(em, libvlc_MediaPlayerPaused, on_event, &sem);
    FUNC0(!res);
    res = FUNC1(em, libvlc_MediaPlayerEndReached, on_event, &sem);
    FUNC0(!res);

    FUNC5(mp, true);

    /* the end may have been already reached before attaching the event */
    if (FUNC4(mp) == libvlc_Playing)
    {
        FUNC6("Waiting for pause\n");
        FUNC9(&sem);
    }

    FUNC7(&sem);
    FUNC2(em, libvlc_MediaPlayerPaused, on_event, &sem);
    FUNC2(em, libvlc_MediaPlayerEndReached, on_event, &sem);
}