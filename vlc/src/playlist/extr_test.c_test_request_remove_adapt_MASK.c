#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_listener_id ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct vlc_playlist_callbacks {int /*<<< orphan*/  on_items_removed; } ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
struct callback_ctx {TYPE_3__ vec_items_removed; } ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_4__ {int playlist_size; } ;
struct TYPE_5__ {int index; int count; TYPE_1__ state; } ;

/* Variables and functions */
 struct callback_ctx CALLBACK_CTX_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct callback_ctx*) ; 
 int /*<<< orphan*/  callback_on_items_removed ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(void)
{
    vlc_playlist_t *playlist = FUNC10(NULL);
    FUNC3(*playlist);

    input_item_t *media[11];
    FUNC0(media, 11);

    /* initial playlist with 10 items */
    int ret = FUNC6(playlist, media, 10);
    FUNC3(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_items_removed = callback_on_items_removed,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            FUNC5(playlist, &cbs, &ctx, false);
    FUNC3(*listener);

    vlc_playlist_item_t *dummy = FUNC13(media[10], 0);
    FUNC3(*dummy);

    /* remove items in a wrong order at wrong position, as if the playlist had
     * been sorted/shuffled before the request were applied */
    vlc_playlist_item_t *items_to_remove[] = {
        FUNC9(playlist, 3),
        FUNC9(playlist, 2),
        FUNC9(playlist, 6),
        FUNC9(playlist, 9),
        FUNC9(playlist, 1),
        dummy, /* inexistant */
        FUNC9(playlist, 8),
    };

    ret = FUNC12(playlist, items_to_remove, 7, 3);
    FUNC3(ret == VLC_SUCCESS);

    FUNC14(dummy);

    FUNC3(FUNC7(playlist) == 4);

    FUNC2(0, 0);
    FUNC2(1, 4);
    FUNC2(2, 5);
    FUNC2(3, 7);

    /* it should notify 3 different slices removed, in descending order for
     * optimization: {8,9}, {6}, {1,2,3}. */

    FUNC3(ctx.vec_items_removed.size == 3);

    FUNC3(ctx.vec_items_removed.data[0].index == 8);
    FUNC3(ctx.vec_items_removed.data[0].count == 2);
    FUNC3(ctx.vec_items_removed.data[0].state.playlist_size == 8);

    FUNC3(ctx.vec_items_removed.data[1].index == 6);
    FUNC3(ctx.vec_items_removed.data[1].count == 1);
    FUNC3(ctx.vec_items_removed.data[1].state.playlist_size == 7);

    FUNC3(ctx.vec_items_removed.data[2].index == 1);
    FUNC3(ctx.vec_items_removed.data[2].count == 3);
    FUNC3(ctx.vec_items_removed.data[2].state.playlist_size == 4);

    FUNC4(&ctx);
    FUNC11(playlist, listener);
    FUNC1(media, 11);
    FUNC8(playlist);
}