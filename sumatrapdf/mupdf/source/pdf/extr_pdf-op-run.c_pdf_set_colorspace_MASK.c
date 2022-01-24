#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int gtop; TYPE_3__* gstate; } ;
typedef  TYPE_1__ pdf_run_processor ;
struct TYPE_8__ {int* v; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ pdf_material ;
struct TYPE_9__ {TYPE_2__ stroke; TYPE_2__ fill; } ;
typedef  TYPE_3__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int PDF_FILL ; 
 int /*<<< orphan*/  PDF_MAT_COLOR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_run_processor *pr, int what, fz_colorspace *colorspace)
{
	pdf_gstate *gstate = pr->gstate + pr->gtop;
	pdf_material *mat;
	int n = FUNC0(ctx, colorspace);

	gstate = FUNC3(ctx, pr);

	mat = what == PDF_FILL ? &gstate->fill : &gstate->stroke;

	FUNC1(ctx, mat->colorspace);

	mat->kind = PDF_MAT_COLOR;
	mat->colorspace = FUNC2(ctx, colorspace);

	mat->v[0] = 0;
	mat->v[1] = 0;
	mat->v[2] = 0;
	mat->v[3] = 1;

	if (FUNC4(ctx, colorspace))
	{
		int i;
		for (i = 0; i < n; i++)
			mat->v[i] = 1.0f;
	}
}