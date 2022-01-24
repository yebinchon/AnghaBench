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
typedef  int /*<<< orphan*/  vlc_playlist_listener_id ;
struct vlc_playlist_callbacks {int /*<<< orphan*/  on_has_next_changed; int /*<<< orphan*/  on_has_prev_changed; int /*<<< orphan*/  on_current_index_changed; } ;
struct callback_ctx {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  selected ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 struct callback_ctx CALLBACK_CTX_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int /*<<< orphan*/  VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct callback_ctx*) ; 
 int /*<<< orphan*/  callback_on_current_index_changed ; 
 int /*<<< orphan*/  callback_on_has_next_changed ; 
 int /*<<< orphan*/  callback_on_has_prev_changed ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(void)
{
    vlc_playlist_t *playlist = FUNC12(NULL);
    FUNC2(*playlist);

    input_item_t *media[6];
    FUNC0(media, 6);

    /* initial playlist with 5 items (1 is not added immediately) */
    int ret = FUNC6(playlist, media, 5);
    FUNC2(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_current_index_changed = callback_on_current_index_changed,
        .on_has_prev_changed = callback_on_has_prev_changed,
        .on_has_next_changed = callback_on_has_next_changed,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            FUNC5(playlist, &cbs, &ctx, false);
    FUNC2(*listener);

    FUNC2(!FUNC11(playlist));
    FUNC2(FUNC10(playlist));

    for (int i = 0; i < 3; ++i)
    {
        FUNC2(FUNC10(playlist));
        ret = FUNC13(playlist);
        FUNC2(ret == VLC_SUCCESS);
    }

    FUNC2(FUNC11(playlist));
    FUNC17(playlist, VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM);

    /* in random order, previous uses the history of randomly selected items */
    FUNC2(!FUNC11(playlist));

    bool selected[5] = {};
    for (int i = 0; i < 5; ++i)
    {
        FUNC2(FUNC10(playlist));
        ret = FUNC13(playlist);
        FUNC2(ret == VLC_SUCCESS);
        ssize_t index = FUNC9(playlist);
        FUNC2(index != -1);
        FUNC2(!selected[index]); /* not selected twice */
        selected[index] = true;
    }

    FUNC2(!FUNC10(playlist));

    /* add a new item, it must be taken into account */
    ret = FUNC7(playlist, media[5]);
    FUNC2(ret == VLC_SUCCESS);
    FUNC2(FUNC10(playlist));

    ret = FUNC13(playlist);
    FUNC2(ret == VLC_SUCCESS);

    FUNC2(FUNC9(playlist) == 5);
    FUNC2(!FUNC10(playlist));

    FUNC16(playlist, 5);

    /* enable repeat */
    FUNC18(playlist, VLC_PLAYLIST_PLAYBACK_REPEAT_ALL);

    /* now there are more items */
    FUNC2(FUNC10(playlist));

    /* once again */
    FUNC4(selected, 0, sizeof(selected));
    for (int i = 0; i < 5; ++i)
    {
        FUNC2(FUNC10(playlist));
        ret = FUNC13(playlist);
        FUNC2(ret == VLC_SUCCESS);
        ssize_t index = FUNC9(playlist);
        FUNC2(index != -1);
        FUNC2(!selected[index]); /* not selected twice */
        selected[index] = true;
    }

    /* there are always more items */
    FUNC2(FUNC10(playlist));

    /* move to the middle of the random array */
    for (int i = 0; i < 3; ++i)
    {
        FUNC2(FUNC10(playlist));
        ret = FUNC13(playlist);
        FUNC2(ret == VLC_SUCCESS);
    }

    FUNC4(selected, 0, sizeof(selected));
    int actual[5]; /* store the selected items (by their index) */

    ssize_t current = FUNC9(playlist);
    FUNC2(current != -1);
    actual[4] = current;

    for (int i = 3; i >= 0; --i)
    {
        FUNC2(FUNC11(playlist));
        ret = FUNC14(playlist);
        FUNC2(ret == VLC_SUCCESS);
        ssize_t index = FUNC9(playlist);
        FUNC2(index != -1);
        actual[i] = index;
        FUNC2(!selected[index]); /* not selected twice */
        selected[index] = true;
    }

    /* no more previous, the history may only contain each item once */
    FUNC2(!FUNC11(playlist));

    /* we should get the same items in the reverse order going forward */
    for (int i = 1; i < 5; ++i)
    {
        FUNC2(FUNC10(playlist));
        ret = FUNC13(playlist);
        FUNC2(ret == VLC_SUCCESS);
        ssize_t index = FUNC9(playlist);
        FUNC2(index != -1);
        FUNC2(index == actual[i]);
    }

    /* there are always more items */
    FUNC2(FUNC10(playlist));

    FUNC3(&ctx);
    FUNC15(playlist, listener);
    FUNC1(media, 6);
    FUNC8(playlist);
}