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
struct vlc_playlist_callbacks {int /*<<< orphan*/  on_items_added; } ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
struct callback_ctx {TYPE_3__ vec_items_added; } ;
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
 int /*<<< orphan*/  callback_on_items_added ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void
FUNC12(void)
{
    vlc_playlist_t *playlist = FUNC9(NULL);
    FUNC3(*playlist);

    input_item_t *media[5];
    FUNC0(media, 5);

    /* initial playlist with 3 items */
    int ret = FUNC6(playlist, media, 3);
    FUNC3(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_items_added = callback_on_items_added,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            FUNC5(playlist, &cbs, &ctx, false);
    FUNC3(*listener);

    /* insert 5 items at index 10 (out-of-bounds) */
    ret = FUNC11(playlist, 10, &media[3], 2);
    FUNC3(ret == VLC_SUCCESS);

    FUNC3(FUNC7(playlist) == 5);

    FUNC2(0, 0);
    FUNC2(1, 1);
    FUNC2(2, 2);
    FUNC2(3, 3);
    FUNC2(4, 4);

    FUNC3(ctx.vec_items_added.size == 1);
    FUNC3(ctx.vec_items_added.data[0].index == 3); /* index was changed */
    FUNC3(ctx.vec_items_added.data[0].count == 2);
    FUNC3(ctx.vec_items_added.data[0].state.playlist_size == 5);

    FUNC4(&ctx);
    FUNC10(playlist, listener);
    FUNC1(media, 5);
    FUNC8(playlist);
}