#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_6__ {int size; scalar_t__* data; } ;
typedef  TYPE_2__ vec_on_state_changed ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_3__ vec_on_position_changed ;
struct media_params {int dummy; } ;
struct TYPE_5__ {TYPE_2__ on_state_changed; TYPE_3__ on_position_changed; } ;
struct ctx {int /*<<< orphan*/  wait; TYPE_1__ report; int /*<<< orphan*/ * player; } ;

/* Variables and functions */
 struct media_params FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ VLC_PLAYER_STATE_PAUSED ; 
 scalar_t__ VLC_PLAYER_STATE_PLAYING ; 
 scalar_t__ VLC_PLAYER_STATE_STARTED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*,char*,struct media_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(struct ctx *ctx)
{
    FUNC7("pause\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = FUNC0(FUNC2(10));
    FUNC4(ctx, "media1", &params);

    /* Start paused */
    FUNC11(player, true);
    FUNC5(ctx);
    {
        vec_on_state_changed *vec = &ctx->report.on_state_changed;
        while (vec->size == 0 || FUNC1(vec) != VLC_PLAYER_STATE_PAUSED)
            FUNC8(player, &ctx->wait);
        FUNC3(vec->size == 3);
        FUNC3(vec->data[0] == VLC_PLAYER_STATE_STARTED);
        FUNC3(vec->data[1] == VLC_PLAYER_STATE_PLAYING);
        FUNC3(vec->data[2] == VLC_PLAYER_STATE_PAUSED);
    }

    {
        vec_on_position_changed *vec = &ctx->report.on_position_changed;
        FUNC3(vec->size == 0);
    }

    /* Resume */
    FUNC10(player);

    {
        vec_on_state_changed *vec = &ctx->report.on_state_changed;
        while (FUNC1(vec) != VLC_PLAYER_STATE_PLAYING)
            FUNC8(player, &ctx->wait);
        FUNC3(vec->size == 4);
    }

    {
        vec_on_position_changed *vec = &ctx->report.on_position_changed;
        while (vec->size == 0)
            FUNC8(player, &ctx->wait);
    }

    /* Pause again (while playing) */
    FUNC9(player);

    {
        vec_on_state_changed *vec = &ctx->report.on_state_changed;
        while (FUNC1(vec) != VLC_PLAYER_STATE_PAUSED)
            FUNC8(player, &ctx->wait);
        FUNC3(vec->size == 5);
    }

    FUNC6(ctx);
}