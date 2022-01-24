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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_6__ {int size; scalar_t__* data; } ;
typedef  TYPE_3__ vec_on_error_changed ;
struct TYPE_5__ {TYPE_3__ on_error_changed; } ;
struct TYPE_4__ {int error; } ;
struct ctx {TYPE_2__ report; int /*<<< orphan*/  played_medias; TYPE_1__ params; int /*<<< orphan*/ * player; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 scalar_t__ VLC_PLAYER_ERROR_NONE ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STARTED ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPED ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ctx *ctx)
{
    FUNC4("unknown_uri");
    vlc_player_t *player = ctx->player;

    input_item_t *media = FUNC1("unknownuri://foo", "fail");
    FUNC0(*media);
    int ret = FUNC5(player, media);
    FUNC0(ret == VLC_SUCCESS);

    ctx->params.error = true;
    bool success = FUNC6(&ctx->played_medias, media);
    FUNC0(success);

    FUNC2(ctx);

    FUNC7(ctx, VLC_PLAYER_STATE_STARTED);
    FUNC7(ctx, VLC_PLAYER_STATE_STOPPED);
    {
        vec_on_error_changed *vec = &ctx->report.on_error_changed;
        FUNC0(vec->size == 1);
        FUNC0(vec->data[0] != VLC_PLAYER_ERROR_NONE);
    }

    FUNC3(ctx);
}