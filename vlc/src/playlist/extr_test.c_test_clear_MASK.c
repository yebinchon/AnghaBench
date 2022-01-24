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
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void)
{
    vlc_playlist_t *playlist = FUNC7(NULL);
    FUNC2(*playlist);

    input_item_t *media[10];
    FUNC0(media, 10);

    /* initial playlist with 10 items */
    int ret = FUNC3(playlist, media, 10);
    FUNC2(ret == VLC_SUCCESS);

    FUNC2(FUNC5(playlist) == 10);
    FUNC4(playlist);
    FUNC2(FUNC5(playlist) == 0);

    FUNC1(media, 10);
    FUNC6(playlist);
}