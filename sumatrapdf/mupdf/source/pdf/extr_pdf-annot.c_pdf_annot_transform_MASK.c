#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ap; int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_9__ {scalar_t__ x1; scalar_t__ x0; scalar_t__ y1; scalar_t__ y0; } ;
typedef  TYPE_2__ fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Rect ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float,float) ; 
 TYPE_2__ FUNC2 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 
 TYPE_2__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

fz_matrix
FUNC7(fz_context *ctx, pdf_annot *annot)
{
	fz_rect bbox, rect;
	fz_matrix matrix;
	float w, h, x, y;

	rect = FUNC4(ctx, annot->obj, FUNC0(Rect));
	bbox = FUNC5(ctx, annot->ap);
	matrix = FUNC6(ctx, annot->ap);

	bbox = FUNC2(bbox, matrix);
	if (bbox.x1 == bbox.x0)
		w = 0;
	else
		w = (rect.x1 - rect.x0) / (bbox.x1 - bbox.x0);
	if (bbox.y1 == bbox.y0)
		h = 0;
	else
		h = (rect.y1 - rect.y0) / (bbox.y1 - bbox.y0);
	x = rect.x0 - bbox.x0;
	y = rect.y0 - bbox.y0;

	return FUNC1(FUNC3(x, y), w, h);
}