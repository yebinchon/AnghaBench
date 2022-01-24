#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_3__ {float* softmask_bc; int luminosity; int /*<<< orphan*/ * softmask_resources; int /*<<< orphan*/ * softmask; int /*<<< orphan*/  ctm; int /*<<< orphan*/  softmask_ctm; } ;
typedef  TYPE_1__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(fz_context *ctx, pdf_processor *proc, pdf_obj *smask, pdf_obj *page_resources, float *bc, int luminosity)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;
	pdf_gstate *gstate = FUNC3(ctx, pr);
	int i;

	if (gstate->softmask)
	{
		FUNC2(ctx, gstate->softmask);
		gstate->softmask = NULL;
		FUNC2(ctx, gstate->softmask_resources);
		gstate->softmask_resources = NULL;
	}

	if (smask)
	{
		fz_colorspace *cs = FUNC5(ctx, smask);
		int cs_n = 1;
		if (cs)
			cs_n = FUNC0(ctx, cs);
		gstate->softmask_ctm = gstate->ctm;
		gstate->softmask = FUNC4(ctx, smask);
		gstate->softmask_resources = FUNC4(ctx, page_resources);
		for (i = 0; i < cs_n; ++i)
			gstate->softmask_bc[i] = bc[i];
		gstate->luminosity = luminosity;
		FUNC1(ctx, cs);
	}
}