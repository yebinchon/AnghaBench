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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
typedef  TYPE_3__ vec_on_vout_changed ;
struct media_params {int dummy; } ;
struct TYPE_4__ {TYPE_3__ on_vout_changed; } ;
struct ctx {TYPE_1__ report; int /*<<< orphan*/ * player; } ;
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_5__ {scalar_t__ action; int /*<<< orphan*/ * vout; } ;

/* Variables and functions */
 struct media_params FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPING ; 
 scalar_t__ VLC_PLAYER_VOUT_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*,char*,struct media_params*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC11 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct ctx *ctx)
{
    FUNC8("test_outputs\n");
    vlc_player_t *player = ctx->player;

    /* Test that the player has a valid aout and vout, even before first
     * playback */
    audio_output_t *aout = FUNC9(player);
    FUNC3(*aout);

    vout_thread_t *vout = FUNC10(player);
    FUNC3(*vout);

    size_t vout_count;
    vout_thread_t **vout_list = FUNC11(player, &vout_count);
    FUNC3(vout_count == 1 && vout_list[0] == vout);
    FUNC12(vout_list[0]);
    FUNC4(vout_list);
    FUNC12(vout);

    /* Test that the player keep the same aout and vout during playback */
    struct media_params params = FUNC0(FUNC1(10));

    FUNC5(ctx, "media1", &params, false);
    FUNC6(ctx);

    FUNC13(ctx, VLC_PLAYER_STATE_STOPPING);

    {
        vec_on_vout_changed *vec = &ctx->report.on_vout_changed;
        FUNC3(vec->size >= 1);
        FUNC3(vec->data[0].action == VLC_PLAYER_VOUT_STARTED);

        vout_thread_t *same_vout = FUNC10(player);
        FUNC3(vec->data[0].vout == same_vout);
        FUNC12(same_vout);
    }

    audio_output_t *same_aout = FUNC9(player);
    FUNC3(same_aout == aout);
    FUNC2(same_aout);

    FUNC2(aout);
    FUNC7(ctx);
}