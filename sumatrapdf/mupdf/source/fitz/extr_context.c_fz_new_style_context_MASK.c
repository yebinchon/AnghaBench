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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* style; } ;
typedef  TYPE_1__ fz_context ;
struct TYPE_6__ {int refs; int use_document_css; int /*<<< orphan*/ * user_css; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_style_context ; 

__attribute__((used)) static void FUNC1(fz_context *ctx)
{
	if (ctx)
	{
		ctx->style = FUNC0(ctx, fz_style_context);
		ctx->style->refs = 1;
		ctx->style->user_css = NULL;
		ctx->style->use_document_css = 1;
	}
}