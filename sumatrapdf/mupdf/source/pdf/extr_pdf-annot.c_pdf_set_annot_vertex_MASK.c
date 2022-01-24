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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_8__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_9__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Vertices ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC3 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vertices_subtypes ; 

void FUNC8(fz_context *ctx, pdf_annot *annot, int i, fz_point p)
{
	fz_matrix page_ctm, inv_page_ctm;
	pdf_obj *vertices;

	FUNC1(ctx, annot, FUNC0(Vertices), vertices_subtypes);

	FUNC7(ctx, annot->page, NULL, &page_ctm);
	inv_page_ctm = FUNC2(page_ctm);

	p = FUNC3(p, inv_page_ctm);

	vertices = FUNC5(ctx, annot->obj, FUNC0(Vertices));
	FUNC4(ctx, vertices, i * 2 + 0, FUNC6(ctx, p.x));
	FUNC4(ctx, vertices, i * 2 + 1, FUNC6(ctx, p.y));
}