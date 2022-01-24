#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_13__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_14__ {float x1; float x0; float y1; float y0; } ;
typedef  TYPE_2__ fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Rotate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,float,...) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char const**,float*,float*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,char const*,float,float*,int,float,float,float,float,float,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, pdf_annot *annot, fz_buffer *buf,
	fz_rect *rect, fz_rect *bbox, fz_matrix *matrix, pdf_obj **res)
{
	const char *font;
	float size, color[3];
	const char *text;
	float w, h, t, b;
	int q, r;

	/* /Rotate is an undocumented annotation property supported by Adobe */
	text = FUNC4(ctx, annot);
	r = FUNC7(ctx, annot->obj, FUNC0(Rotate));
	q = FUNC6(ctx, annot);
	FUNC5(ctx, annot, &font, &size, color);

	w = rect->x1 - rect->x0;
	h = rect->y1 - rect->y0;
	if (r == 90 || r == 270)
		t = h, h = w, w = t;

	*matrix = FUNC3(r);
	*bbox = FUNC2(0, 0, w, h);

	if (FUNC9(ctx, annot, buf))
		FUNC1(ctx, buf, "0 0 %g %g re\nf\n", w, h);

	b = FUNC8(ctx, annot, buf);
	if (b > 0)
	{
		FUNC1(ctx, buf, "%g %g %g RG\n", color[0], color[1], color[2]);
		FUNC1(ctx, buf, "%g %g %g %g re\nS\n", b/2, b/2, w-b, h-b);
	}

	FUNC1(ctx, buf, "%g %g %g %g re\nW\nn\n", b, b, w-b*2, h-b*2);

	FUNC10(ctx, annot, buf, res, text, font, size, color, q, w, h, b*2,
		0.8f, 1.2f, 1, 0, 0);
}