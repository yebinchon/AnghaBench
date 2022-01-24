#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_style_context ;
struct TYPE_5__ {TYPE_4__* style; } ;
typedef  TYPE_1__ fz_context ;
struct TYPE_6__ {int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static fz_style_context *FUNC1(fz_context *ctx)
{
	if (!ctx)
		return NULL;
	return FUNC0(ctx, ctx->style, &ctx->style->refs);
}