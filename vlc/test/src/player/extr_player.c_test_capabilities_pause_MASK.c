#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_4__ {scalar_t__ size; } ;
typedef  TYPE_2__ vec_on_capabilities_changed ;
struct media_params {int can_pause; } ;
struct TYPE_3__ {TYPE_2__ on_capabilities_changed; } ;
struct ctx {int /*<<< orphan*/  wait; TYPE_1__ report; int /*<<< orphan*/ * player; } ;

/* Variables and functions */
 struct media_params FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctx*,char*,struct media_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct ctx *ctx)
{
    FUNC6("capabilites_pause\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = FUNC0(FUNC1(1));
    params.can_pause = false;
    FUNC3(ctx, "media1", &params);

    FUNC4(ctx);

    {
        vec_on_capabilities_changed *vec = &ctx->report.on_capabilities_changed;
        while (vec->size == 0)
            FUNC9(player, &ctx->wait);
    }

    /* Ensure that pause doesn't work */
    FUNC10(player);
    FUNC8(player, 32.f);

    FUNC7(ctx);

    FUNC11(ctx, VLC_PLAYER_STATE_STOPPED);
    FUNC2(ctx);

    FUNC5(ctx);
}