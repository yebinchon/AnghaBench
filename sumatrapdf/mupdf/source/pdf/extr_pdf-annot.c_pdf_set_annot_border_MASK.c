#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  BE ; 
 int /*<<< orphan*/  BS ; 
 int /*<<< orphan*/  Border ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(fz_context *ctx, pdf_annot *annot, float w)
{
	pdf_obj *bs = FUNC2(ctx, annot->obj, FUNC0(BS));
	if (!FUNC6(ctx, bs))
		bs = FUNC3(ctx, annot->obj, FUNC0(BS), 1);
	FUNC4(ctx, bs, FUNC0(W), w);

	FUNC1(ctx, annot->obj, FUNC0(Border)); /* deprecated */
	FUNC1(ctx, annot->obj, FUNC0(BE)); /* not supported */

	FUNC5(ctx, annot);
}