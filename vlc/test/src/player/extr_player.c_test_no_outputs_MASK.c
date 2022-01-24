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
typedef  TYPE_2__ vec_on_vout_changed ;
struct media_params {int dummy; } ;
struct TYPE_3__ {TYPE_2__ on_vout_changed; } ;
struct ctx {TYPE_1__ report; int /*<<< orphan*/ * player; } ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 struct media_params FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ctx*,char*,struct media_params*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ctx *ctx)
{
    FUNC6("test_no_outputs\n");
    vlc_player_t *player = ctx->player;

    struct media_params params = FUNC0(FUNC1(10));
    FUNC3(ctx, "media1", &params, false);
    FUNC4(ctx);

    FUNC8(ctx, VLC_PLAYER_STATE_STOPPING);
    {
        vec_on_vout_changed *vec = &ctx->report.on_vout_changed;
        FUNC2(vec->size == 0);
    }

    audio_output_t *aout = FUNC7(player);
    FUNC2(!aout);

    FUNC5(ctx);
}