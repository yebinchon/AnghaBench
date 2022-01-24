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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_3__ {int /*<<< orphan*/ * obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  BS ; 
 int /*<<< orphan*/  Border ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

float
FUNC5(fz_context *ctx, pdf_annot *annot)
{
	pdf_obj *bs, *bs_w, *border;
	bs = FUNC2(ctx, annot->obj, FUNC0(BS));
	bs_w = FUNC2(ctx, bs, FUNC0(W));
	if (FUNC3(ctx, bs_w))
		return FUNC4(ctx, bs_w);
	border = FUNC2(ctx, annot->obj, FUNC0(Border));
	bs_w = FUNC1(ctx, border, 2);
	if (FUNC3(ctx, bs_w))
		return FUNC4(ctx, bs_w);
	return 1;
}