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
struct callback_ctx {int /*<<< orphan*/  vec_children_removed; int /*<<< orphan*/  vec_children_added; int /*<<< orphan*/  vec_children_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct callback_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(struct callback_ctx *ctx)
{
    FUNC0(ctx);
    FUNC1(&ctx->vec_children_reset);
    FUNC1(&ctx->vec_children_added);
    FUNC1(&ctx->vec_children_removed);
}