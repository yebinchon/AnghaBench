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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void)
{
    vlc_playlist_t *playlist = FUNC8(NULL);
    FUNC2(*playlist);

    input_item_t *media[10];
    FUNC0(media, 10);

    /* initial playlist with 9 items (1 is not added) */
    int ret = FUNC3(playlist, media, 9);
    FUNC2(ret == VLC_SUCCESS);

    FUNC2(FUNC7(playlist, media[4]) == 4);
    /* only items 0 to 8 were added */
    FUNC2(FUNC7(playlist, media[9]) == -1);

    vlc_playlist_item_t *item = FUNC5(playlist, 4);
    FUNC2(FUNC6(playlist, item) == 4);

    FUNC10(item);
    FUNC9(playlist, 4);
    FUNC2(FUNC6(playlist, item) == -1);
    FUNC11(item);

    FUNC1(media, 10);
    FUNC4(playlist);
}