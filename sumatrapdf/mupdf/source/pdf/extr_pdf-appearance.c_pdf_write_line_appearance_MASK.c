#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_12__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_13__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_2__ fz_rect ;
struct TYPE_14__ {int x; int y; } ;
typedef  TYPE_3__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 TYPE_2__ FUNC2 (TYPE_2__,void*) ; 
 void* FUNC3 (int,float) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,float,float,float,float,float,int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 float FUNC14 (float) ; 

__attribute__((used)) static void
FUNC15(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
	pdf_obj *line, *le;
	fz_point a, b;
	float w;
	int sc;
	int ic;

	w = FUNC10(ctx, annot, buf);
	sc = FUNC13(ctx, annot, buf);
	ic = FUNC11(ctx, annot, buf);

	line = FUNC9(ctx, annot->obj, FUNC0(L));
	a.x = FUNC7(ctx, line, 0);
	a.y = FUNC7(ctx, line, 1);
	b.x = FUNC7(ctx, line, 2);
	b.y = FUNC7(ctx, line, 3);

	FUNC1(ctx, buf, "%g %g m\n%g %g l\n", a.x, a.y, b.x, b.y);
	FUNC5(ctx, buf, sc);

	rect->x0 = FUNC4(a.x, b.x);
	rect->y0 = FUNC4(a.y, b.y);
	rect->x1 = FUNC3(a.x, b.x);
	rect->y1 = FUNC3(a.y, b.y);

	le = FUNC9(ctx, annot->obj, FUNC0(LE));
	if (FUNC8(ctx, le) == 2)
	{
		float dx = b.x - a.x;
		float dy = b.y - a.y;
		float l = FUNC14(dx*dx + dy*dy);
		FUNC12(ctx, buf, rect, a.x, a.y, dx/l, dy/l, w, sc, ic, FUNC6(ctx, le, 0));
		FUNC12(ctx, buf, rect, b.x, b.y, -dx/l, -dy/l, w, sc, ic, FUNC6(ctx, le, 1));
	}
	*rect = FUNC2(*rect, FUNC3(1, w));
}