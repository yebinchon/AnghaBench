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
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void)
{
    vlc_playlist_t *playlist = FUNC7(NULL);
    FUNC3(*playlist);

    input_item_t *media[10];
    FUNC0(media, 10);

    /* initial playlist with 10 items */
    int ret = FUNC4(playlist, media, 10);
    FUNC3(ret == VLC_SUCCESS);

    /* move slice {3, 4, 5, 6} so that its new position is 5 */
    FUNC6(playlist, 3, 4, 5);

    FUNC2(0, 0);
    FUNC2(1, 1);
    FUNC2(2, 2);
    FUNC2(3, 7);
    FUNC2(4, 8);
    FUNC2(5, 3);
    FUNC2(6, 4);
    FUNC2(7, 5);
    FUNC2(8, 6);
    FUNC2(9, 9);

    /* move it back to its original position */
    FUNC6(playlist, 5, 4, 3);

    FUNC2(0, 0);
    FUNC2(1, 1);
    FUNC2(2, 2);
    FUNC2(3, 3);
    FUNC2(4, 4);
    FUNC2(5, 5);
    FUNC2(6, 6);
    FUNC2(7, 7);
    FUNC2(8, 8);
    FUNC2(9, 9);

    FUNC1(media, 10);
    FUNC5(playlist);
}