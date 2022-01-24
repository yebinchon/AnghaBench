#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cvpxpic_ctx {int /*<<< orphan*/  nb_fields; int /*<<< orphan*/  on_released_data; int /*<<< orphan*/  cvpx; int /*<<< orphan*/  (* on_released_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  rc; } ;
typedef  int /*<<< orphan*/  picture_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(picture_context_t *opaque)
{
    struct cvpxpic_ctx *ctx = (struct cvpxpic_ctx *)opaque;

    if (FUNC3(&ctx->rc))
    {
        FUNC0(ctx->cvpx);
        if (ctx->on_released_cb)
            ctx->on_released_cb(ctx->cvpx, ctx->on_released_data, ctx->nb_fields);
        FUNC1(opaque);
    }
}