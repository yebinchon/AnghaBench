#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_8__ {scalar_t__ size; } ;
typedef  TYPE_3__ vec_on_capabilities_changed ;
struct TYPE_7__ {scalar_t__ can_seek; scalar_t__ can_pause; } ;
struct TYPE_6__ {TYPE_3__ on_capabilities_changed; } ;
struct ctx {TYPE_2__ params; int /*<<< orphan*/  wait; int /*<<< orphan*/ * player; TYPE_1__ report; } ;
struct TYPE_9__ {int new_caps; } ;

/* Variables and functions */
 TYPE_4__ FUNC0 (TYPE_3__*) ; 
 int VLC_PLAYER_CAP_PAUSE ; 
 int VLC_PLAYER_CAP_SEEK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;
    vec_on_capabilities_changed *vec = &ctx->report.on_capabilities_changed;
    while (vec->size == 0)
        FUNC4(ctx->player, &ctx->wait);
    int new_caps = FUNC0(vec).new_caps;
    FUNC1(FUNC3(player) == ctx->params.can_seek
        && !!(new_caps & VLC_PLAYER_CAP_SEEK) == ctx->params.can_seek);
    FUNC1(FUNC2(player) == ctx->params.can_pause
        && !!(new_caps & VLC_PLAYER_CAP_PAUSE) == ctx->params.can_pause);
}