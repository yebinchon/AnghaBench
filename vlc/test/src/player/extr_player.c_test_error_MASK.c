#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef  TYPE_2__ vec_on_error_changed ;
struct media_params {int error; } ;
struct TYPE_4__ {TYPE_2__ on_error_changed; } ;
struct ctx {int /*<<< orphan*/  wait; TYPE_1__ report; int /*<<< orphan*/ * player; } ;

/* Variables and functions */
 struct media_params FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ VLC_PLAYER_ERROR_NONE ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ctx*,char*,struct media_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ctx *ctx)
{
    FUNC6("error\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = FUNC0(FUNC2(1));
    params.error = true;
    FUNC3(ctx, "media1", &params);

    FUNC4(ctx);

    {
        vec_on_error_changed *vec = &ctx->report.on_error_changed;
        while (vec->size == 0 || FUNC1(vec) == VLC_PLAYER_ERROR_NONE)
            FUNC7(player, &ctx->wait);
    }
    FUNC8(ctx, VLC_PLAYER_STATE_STOPPED);

    FUNC5(ctx);
}