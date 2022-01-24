#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_14__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_15__ {void* y1; void* y0; void* x1; void* x0; } ;
typedef  TYPE_2__ fz_rect ;
struct TYPE_16__ {void* y; void* x; } ;
typedef  TYPE_3__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Vertices ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ fz_empty_rect ; 
 TYPE_2__ FUNC3 (TYPE_2__,float) ; 
 TYPE_2__ FUNC4 (TYPE_2__,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect, int close)
{
	pdf_obj *verts;
	fz_point p;
	int i, n;
	float lw;
	int sc;

	lw = FUNC9(ctx, annot, buf);
	sc = FUNC10(ctx, annot, buf);

	*rect = fz_empty_rect;

	verts = FUNC8(ctx, annot->obj, FUNC0(Vertices));
	n = FUNC7(ctx, verts) / 2;
	if (n > 0)
	{
		for (i = 0; i < n; ++i)
		{
			p.x = FUNC6(ctx, verts, i*2+0);
			p.y = FUNC6(ctx, verts, i*2+1);
			if (i == 0)
			{
				rect->x0 = rect->x1 = p.x;
				rect->y0 = rect->y1 = p.y;
			}
			else
				*rect = FUNC4(*rect, p);
			if (i == 0)
				FUNC1(ctx, buf, "%g %g m\n", p.x, p.y);
			else
				FUNC1(ctx, buf, "%g %g l\n", p.x, p.y);
		}
		if (close)
			FUNC2(ctx, buf, "h\n");
		FUNC5(ctx, buf, sc);
		*rect = FUNC3(*rect, lw);
	}
}