#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  softmask_save ;
struct TYPE_7__ {int gtop; TYPE_2__* gstate; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ pdf_run_processor ;
struct TYPE_8__ {scalar_t__ blendmode; } ;
typedef  TYPE_2__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static pdf_gstate *
FUNC2(fz_context *ctx, pdf_run_processor *pr, fz_rect bbox, softmask_save *softmask)
{
	pdf_gstate *gstate = FUNC0(ctx, pr, softmask);

	if (gstate->blendmode)
		FUNC1(ctx, pr->dev, bbox, NULL, 0, 0, gstate->blendmode, 1);

	return pr->gstate + pr->gtop;
}