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
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void)
{
    vlc_playlist_t *playlist = FUNC9(NULL);
    FUNC3(*playlist);

    input_item_t *media[15];
    FUNC0(media, 15);

    /* initial playlist with 5 items */
    int ret = FUNC4(playlist, media, 5);
    FUNC3(ret == VLC_SUCCESS);

    /* insert one by one */
    for (int i = 0; i < 5; ++i)
    {
        ret = FUNC8(playlist, 2, media[i + 5]);
        FUNC3(ret == VLC_SUCCESS);
    }

    /* insert several at once */
    ret = FUNC7(playlist, 6, &media[10], 5);
    FUNC3(ret == VLC_SUCCESS);

    FUNC3(FUNC5(playlist) == 15);

    FUNC2(0, 0);
    FUNC2(1, 1);

    FUNC2(2, 9);
    FUNC2(3, 8);
    FUNC2(4, 7);
    FUNC2(5, 6);

    FUNC2(6, 10);
    FUNC2(7, 11);
    FUNC2(8, 12);
    FUNC2(9, 13);
    FUNC2(10, 14);

    FUNC2(11, 5);
    FUNC2(12, 2);
    FUNC2(13, 3);
    FUNC2(14, 4);

    FUNC1(media, 15);
    FUNC6(playlist);
}