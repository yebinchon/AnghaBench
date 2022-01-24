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
typedef  int /*<<< orphan*/  pdf_device ;
struct TYPE_3__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  ctm; } ;
typedef  TYPE_1__ gstate ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  ctm ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_device *pdev, fz_matrix ctm)
{
	fz_matrix inverse;
	gstate *gs = FUNC0(pdev);

	if (FUNC4(&gs->ctm, &ctm, sizeof(ctm)) == 0)
		return;
	inverse = FUNC3(gs->ctm);
	inverse = FUNC2(ctm, inverse);
	gs->ctm = ctm;
	FUNC1(ctx, gs->buf, "%M cm\n", &inverse);
}