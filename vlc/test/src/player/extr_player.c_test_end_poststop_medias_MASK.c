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
struct TYPE_7__ {size_t size; scalar_t__* data; } ;
typedef  TYPE_3__ vec_on_current_media_changed ;
struct TYPE_6__ {size_t const size; scalar_t__* data; } ;
struct TYPE_5__ {TYPE_3__ on_current_media_changed; } ;
struct ctx {TYPE_2__ played_medias; int /*<<< orphan*/  wait; TYPE_1__ report; int /*<<< orphan*/ * player; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ctx *ctx)
{
    vlc_player_t *player = ctx->player;
    vec_on_current_media_changed *vec = &ctx->report.on_current_media_changed;

    FUNC1(vec->size > 0);
    FUNC1(FUNC4(player) != NULL);
    FUNC1(FUNC0(vec) == FUNC4(player));
    const size_t oldsize = vec->size;

    FUNC2(ctx, NULL, NULL, false);

    while (vec->size == oldsize)
        FUNC3(player, &ctx->wait);

    FUNC1(vec->size == ctx->played_medias.size);
    for (size_t i  = 0; i < vec->size; ++i)
        FUNC1(vec->data[i] == ctx->played_medias.data[i]);

    FUNC1(FUNC0(vec) == NULL);
    FUNC1(FUNC4(player) == NULL);
}