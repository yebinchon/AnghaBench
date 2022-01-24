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
struct TYPE_4__ {int /*<<< orphan*/  error; } ;
struct TYPE_3__ {int /*<<< orphan*/  on_state_changed; } ;
struct ctx {TYPE_2__ params; TYPE_1__ report; int /*<<< orphan*/ * player; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_PLAYER_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctx*,float) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ctx*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ctx*,scalar_t__) ; 

__attribute__((used)) static void
FUNC14(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;

    /* Don't wait if we already stopped or waited for a stop */
    const bool wait_stopped =
        FUNC0(&ctx->report.on_state_changed) != VLC_PLAYER_STATE_STOPPED;
    /* Can be no-op */
    FUNC12(player);
    FUNC1(FUNC10(player) != NULL);
    if (wait_stopped)
        FUNC13(ctx, VLC_PLAYER_STATE_STOPPED);

    if (!ctx->params.error)
    {
        FUNC6(ctx);
        FUNC8(ctx);
        FUNC5(ctx);
        FUNC7(ctx);
        FUNC9(ctx);
    }
    FUNC4(ctx);

    FUNC3(ctx, 1.0f);
    FUNC11(player, false);

    FUNC2(ctx);
}