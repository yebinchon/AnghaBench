#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_8__ {scalar_t__ size; scalar_t__* data; } ;
typedef  TYPE_4__ vec_on_length_changed ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_7__ {TYPE_4__ on_length_changed; } ;
struct ctx {TYPE_2__ params; int /*<<< orphan*/  wait; int /*<<< orphan*/ * player; TYPE_1__ played_medias; TYPE_3__ report; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;
    vec_on_length_changed *vec = &ctx->report.on_length_changed;
    while (vec->size != ctx->played_medias.size)
        FUNC1(ctx->player, &ctx->wait);
    for (size_t i = 0; i < vec->size; ++i)
        FUNC0(vec->data[i] == ctx->params.length);
    FUNC0(ctx->params.length == FUNC2(player));
}