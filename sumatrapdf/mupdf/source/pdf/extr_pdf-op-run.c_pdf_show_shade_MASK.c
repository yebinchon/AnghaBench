#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ softmask_save ;
struct TYPE_13__ {scalar_t__ hidden; } ;
struct TYPE_15__ {int gtop; int /*<<< orphan*/  dev; TYPE_2__ super; TYPE_5__* gstate; } ;
typedef  TYPE_4__ pdf_run_processor ;
struct TYPE_12__ {int /*<<< orphan*/  color_params; int /*<<< orphan*/  alpha; } ;
struct TYPE_16__ {TYPE_1__ fill; int /*<<< orphan*/  ctm; } ;
typedef  TYPE_5__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_shade ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, pdf_run_processor *pr, fz_shade *shd)
{
	pdf_gstate *gstate = pr->gstate + pr->gtop;
	fz_rect bbox;
	softmask_save softmask = { NULL };

	if (pr->super.hidden)
		return;

	bbox = FUNC0(ctx, shd, gstate->ctm);

	gstate = FUNC2(ctx, pr, bbox, &softmask);

	/* FIXME: The gstate->ctm in the next line may be wrong; maybe
	 * it should be the parent gstates ctm? */
	FUNC1(ctx, pr->dev, shd, gstate->ctm, gstate->fill.alpha, gstate->fill.color_params);

	FUNC3(ctx, pr, &softmask);
}