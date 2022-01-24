#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_9__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_10__ {void* y; void* x; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC2 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_subtypes ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(fz_context *ctx, pdf_annot *annot, fz_point *a, fz_point *b)
{
	fz_matrix page_ctm;
	pdf_obj *line;

	FUNC1(ctx, annot, FUNC0(L), line_subtypes);

	FUNC5(ctx, annot->page, NULL, &page_ctm);

	line = FUNC4(ctx, annot->obj, FUNC0(L));
	a->x = FUNC3(ctx, line, 0);
	a->y = FUNC3(ctx, line, 1);
	b->x = FUNC3(ctx, line, 2);
	b->y = FUNC3(ctx, line, 3);
	*a = FUNC2(*a, page_ctm);
	*b = FUNC2(*b, page_ctm);
}