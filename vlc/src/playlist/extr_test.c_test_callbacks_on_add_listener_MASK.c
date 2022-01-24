#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_listener_id ;
struct vlc_playlist_callbacks {int /*<<< orphan*/  on_has_next_changed; int /*<<< orphan*/  on_has_prev_changed; int /*<<< orphan*/  on_current_index_changed; int /*<<< orphan*/  on_playback_order_changed; int /*<<< orphan*/  on_playback_repeat_changed; int /*<<< orphan*/  on_items_reset; } ;
struct TYPE_15__ {int size; TYPE_11__* data; } ;
struct TYPE_13__ {int size; TYPE_9__* data; } ;
struct TYPE_23__ {int size; TYPE_7__* data; } ;
struct TYPE_21__ {int size; TYPE_5__* data; } ;
struct TYPE_19__ {int size; TYPE_3__* data; } ;
struct TYPE_17__ {int size; TYPE_1__* data; } ;
struct callback_ctx {TYPE_12__ vec_has_next_changed; TYPE_10__ vec_has_prev_changed; TYPE_8__ vec_current_index_changed; TYPE_6__ vec_playback_order_changed; TYPE_4__ vec_playback_repeat_changed; TYPE_2__ vec_items_reset; } ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_24__ {int has_prev; } ;
struct TYPE_22__ {int current; } ;
struct TYPE_20__ {scalar_t__ order; } ;
struct TYPE_18__ {scalar_t__ repeat; } ;
struct TYPE_16__ {int count; } ;
struct TYPE_14__ {int has_next; } ;

/* Variables and functions */
 struct callback_ctx CALLBACK_CTX_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ; 
 scalar_t__ VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct callback_ctx*) ; 
 int /*<<< orphan*/  callback_on_current_index_changed ; 
 int /*<<< orphan*/  callback_on_has_next_changed ; 
 int /*<<< orphan*/  callback_on_has_prev_changed ; 
 int /*<<< orphan*/  callback_on_items_reset ; 
 int /*<<< orphan*/  callback_on_playback_order_changed ; 
 int /*<<< orphan*/  callback_on_playback_repeat_changed ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(void)
{
    vlc_playlist_t *playlist = FUNC8(NULL);
    FUNC2(*playlist);

    input_item_t *media[10];
    FUNC0(media, 10);

    /* initial playlist with 10 items */
    int ret = FUNC5(playlist, media, 10);
    FUNC2(ret == VLC_SUCCESS);

    FUNC11(playlist, VLC_PLAYLIST_PLAYBACK_REPEAT_ALL);
    FUNC10(playlist, VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL);

    ret = FUNC7(playlist, 5);
    FUNC2(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_items_reset = callback_on_items_reset,
        .on_playback_repeat_changed = callback_on_playback_repeat_changed,
        .on_playback_order_changed = callback_on_playback_order_changed,
        .on_current_index_changed = callback_on_current_index_changed,
        .on_has_prev_changed = callback_on_has_prev_changed,
        .on_has_next_changed = callback_on_has_next_changed,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            FUNC4(playlist, &cbs, &ctx, true);
    FUNC2(*listener);

    FUNC2(ctx.vec_items_reset.size == 1);
    FUNC2(ctx.vec_items_reset.data[0].count == 10);

    FUNC2(ctx.vec_playback_repeat_changed.size == 1);
    FUNC2(ctx.vec_playback_repeat_changed.data[0].repeat ==
                                            VLC_PLAYLIST_PLAYBACK_REPEAT_ALL);

    FUNC2(ctx.vec_playback_order_changed.size == 1);
    FUNC2(ctx.vec_playback_order_changed.data[0].order ==
                                            VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL);

    FUNC2(ctx.vec_current_index_changed.size == 1);
    FUNC2(ctx.vec_current_index_changed.data[0].current == 5);

    FUNC2(ctx.vec_has_prev_changed.size == 1);
    FUNC2(ctx.vec_has_prev_changed.data[0].has_prev);

    FUNC2(ctx.vec_has_next_changed.size == 1);
    FUNC2(ctx.vec_has_next_changed.data[0].has_next);

    FUNC3(&ctx);
    FUNC9(playlist, listener);
    FUNC1(media, 10);
    FUNC6(playlist);
}