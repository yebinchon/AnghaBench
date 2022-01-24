#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_title_list ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_8__ {scalar_t__ size; int /*<<< orphan*/ ** data; } ;
typedef  TYPE_2__ vec_on_titles_changed ;
struct TYPE_9__ {int size; int* data; } ;
typedef  TYPE_3__ vec_on_title_selection_changed ;
struct TYPE_10__ {scalar_t__ size; } ;
typedef  TYPE_4__ vec_on_chapter_selection_changed ;
struct vlc_player_title {int chapter_count; } ;
struct media_params {int title_count; int chapter_count; int null_names; } ;
struct TYPE_7__ {TYPE_4__ on_chapter_selection_changed; TYPE_3__ on_title_selection_changed; TYPE_2__ on_titles_changed; } ;
struct ctx {int /*<<< orphan*/  wait; TYPE_1__ report; int /*<<< orphan*/ * player; } ;
struct TYPE_11__ {size_t const chapter_idx; int title_idx; } ;

/* Variables and functions */
 struct media_params FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*,char*,struct media_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct vlc_player_title const*,size_t const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct vlc_player_title const*) ; 
 struct vlc_player_title* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct ctx *ctx, bool null_names)
{
    FUNC8("titles (null_names: %d)\n", null_names);
    vlc_player_t *player = ctx->player;

    struct media_params params = FUNC0(FUNC2(100));
    params.title_count = 5;
    params.chapter_count = 2000;
    params.null_names = null_names;
    FUNC5(ctx, "media1", &params);

    FUNC6(ctx);

    /* Wait for the title list */
    vlc_player_title_list *titles;
    {
        vec_on_titles_changed *vec = &ctx->report.on_titles_changed;
        while (vec->size == 0)
            FUNC10(player, &ctx->wait);
        titles = vec->data[0];
        FUNC3(titles != NULL && titles == FUNC11(player));
    }

    /* Select a new title and a new chapter */
    const size_t last_chapter_idx = params.chapter_count - 1;
    {
        vec_on_title_selection_changed *vec =
            &ctx->report.on_title_selection_changed;
        while (vec->size == 0)
            FUNC10(player, &ctx->wait);
        FUNC3(vec->data[0] == 0);

        const struct vlc_player_title *title =
            FUNC14(titles, 4);
        FUNC13(player, title);

        while (vec->size == 1)
            FUNC10(player, &ctx->wait);
        FUNC3(vec->data[1] == 4);

        FUNC3(title->chapter_count == params.chapter_count);
        FUNC12(player, title, last_chapter_idx);
    }

    /* Wait for the chapter selection */
    {
        vec_on_chapter_selection_changed *vec =
            &ctx->report.on_chapter_selection_changed;

        while (vec->size == 0 || FUNC1(vec).chapter_idx != last_chapter_idx)
            FUNC10(player, &ctx->wait);
        FUNC3(FUNC1(vec).title_idx == 4);
    }

    FUNC9(ctx);
    FUNC15(ctx, VLC_PLAYER_STATE_STOPPED);
    FUNC4(ctx);
    FUNC7(ctx);
}