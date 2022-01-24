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
 int /*<<< orphan*/  MK ; 
 int /*<<< orphan*/  MaxLen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PDF_TX_FIELD_IS_COMB ; 
 int PDF_TX_FIELD_IS_MULTILINE ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,float,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char const**,float*,float*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 float FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,char const*,float,float*,int,float,float,float,float,float,int,int,int) ; 

__attribute__((used)) static void
FUNC15(fz_context *ctx, pdf_annot *annot, fz_buffer *buf,
	fz_rect *rect, fz_rect *bbox, fz_matrix *matrix, pdf_obj **res,
	const char *text, int ff)
{
	const char *font;
	float size, color[3];
	float w, h, t, b;
	int has_bc = 0;
	int q, r;

	r = FUNC9(ctx, FUNC7(ctx, annot->obj, FUNC0(MK)), FUNC0(R));
	q = FUNC6(ctx, annot);
	FUNC5(ctx, annot, &font, &size, color);

	w = rect->x1 - rect->x0;
	h = rect->y1 - rect->y0;
	r = r % 360;
	if (r == 90 || r == 270)
		t = h, h = w, w = t;
	*matrix = FUNC4(r);
	*bbox = FUNC3(0, 0, w, h);

	FUNC2(ctx, buf, "/Tx BMC\nq\n");

	if (FUNC12(ctx, annot, buf))
		FUNC1(ctx, buf, "0 0 %g %g re\nf\n", w, h);

	b = FUNC13(ctx, annot, buf);
	if (b > 0 && FUNC11(ctx, annot, buf))
	{
		FUNC1(ctx, buf, "%g %g %g %g re\ns\n", b/2, b/2, w-b, h-b);
		has_bc = 1;
	}

	FUNC1(ctx, buf, "%g %g %g %g re\nW\nn\n", b, b, w-b*2, h-b*2);

	if (ff & PDF_TX_FIELD_IS_MULTILINE)
	{
		FUNC14(ctx, annot, buf, res, text, font, size, color, q, w, h, b*2,
			1.116f, 1.116f, 1, 0, 1);
	}
	else if (ff & PDF_TX_FIELD_IS_COMB)
	{
		int maxlen = FUNC10(ctx, FUNC8(ctx, annot->obj, FUNC0(MaxLen)));
		if (has_bc && maxlen > 1)
		{
			float cell_w = (w - 2 * b) / maxlen;
			int i;
			for (i = 1; i < maxlen; ++i)
			{
				float x = b + cell_w * i;
				FUNC1(ctx, buf, "%g %g m %g %g l s\n", x, b, x, h-b);
			}
		}
		FUNC14(ctx, annot, buf, res, text, font, size, color, q, w, h, 0,
			0.8f, 1.2f, 0, maxlen, 0);
	}
	else
	{
		FUNC14(ctx, annot, buf, res, text, font, size, color, q, w, h, b*2,
			0.8f, 1.2f, 0, 0, 0);
	}

	FUNC2(ctx, buf, "Q\nEMC\n");
}