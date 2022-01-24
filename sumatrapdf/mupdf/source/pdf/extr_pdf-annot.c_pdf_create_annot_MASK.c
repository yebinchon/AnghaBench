#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_page ;
struct TYPE_20__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ pdf_annot ;
struct TYPE_21__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef  TYPE_3__ fz_rect ;
struct TYPE_22__ {int member_0; int member_1; } ;
typedef  TYPE_4__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  enum pdf_annot_type { ____Placeholder_pdf_annot_type } pdf_annot_type ;

/* Variables and functions */
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  P ; 
#define  PDF_ANNOT_CARET 143 
#define  PDF_ANNOT_CIRCLE 142 
#define  PDF_ANNOT_FILE_ATTACHMENT 141 
#define  PDF_ANNOT_FREE_TEXT 140 
#define  PDF_ANNOT_HIGHLIGHT 139 
#define  PDF_ANNOT_INK 138 
 int PDF_ANNOT_IS_NO_ROTATE ; 
 int PDF_ANNOT_IS_NO_ZOOM ; 
 int PDF_ANNOT_IS_PRINT ; 
#define  PDF_ANNOT_LINE 137 
#define  PDF_ANNOT_POLYGON 136 
#define  PDF_ANNOT_POLY_LINE 135 
#define  PDF_ANNOT_SOUND 134 
#define  PDF_ANNOT_SQUARE 133 
#define  PDF_ANNOT_SQUIGGLY 132 
#define  PDF_ANNOT_STAMP 131 
#define  PDF_ANNOT_STRIKE_OUT 130 
#define  PDF_ANNOT_TEXT 129 
#define  PDF_ANNOT_UNDERLINE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Rotate ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int,float const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,char*,int,float const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_4__,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

pdf_annot *
FUNC12(fz_context *ctx, pdf_page *page, enum pdf_annot_type type)
{
	static const float black[3] = { 0, 0, 0 };
	static const float red[3] = { 1, 0, 0 };
	static const float green[3] = { 0, 1, 0 };
	static const float blue[3] = { 0, 0, 1 };
	static const float yellow[3] = { 1, 1, 0 };
	static const float magenta[3] = { 1, 0, 1 };

	int flags = PDF_ANNOT_IS_PRINT; /* Make printable as default */

	pdf_annot *annot = FUNC1(ctx, page, type);

	switch (type)
	{
	default:
		break;

	case PDF_ANNOT_TEXT:
	case PDF_ANNOT_FILE_ATTACHMENT:
	case PDF_ANNOT_SOUND:
		{
			fz_rect icon_rect = { 12, 12, 12+20, 12+20 };
			flags = PDF_ANNOT_IS_PRINT | PDF_ANNOT_IS_NO_ZOOM | PDF_ANNOT_IS_NO_ROTATE;
			FUNC10(ctx, annot, icon_rect);
			FUNC7(ctx, annot, 3, yellow);
		}
		break;

	case PDF_ANNOT_FREE_TEXT:
		{
			fz_rect text_rect = { 12, 12, 12+200, 12+100 };

			/* Use undocumented Adobe property to match page rotation. */
			int rot = FUNC11(ctx, FUNC2(ctx, page->obj, FUNC0(Rotate)));
			if (rot != 0)
				FUNC4(ctx, annot->obj, FUNC0(Rotate), rot);

			FUNC10(ctx, annot, text_rect);
			FUNC6(ctx, annot, 0);
			FUNC8(ctx, annot, "Helv", 12, black);
		}
		break;

	case PDF_ANNOT_STAMP:
		{
			fz_rect stamp_rect = { 12, 12, 12+190, 12+50 };
			FUNC10(ctx, annot, stamp_rect);
			FUNC7(ctx, annot, 3, red);
		}
		break;

	case PDF_ANNOT_CARET:
		{
			fz_rect caret_rect = { 12, 12, 12+18, 12+15 };
			FUNC10(ctx, annot, caret_rect);
			FUNC7(ctx, annot, 3, blue);
		}
		break;

	case PDF_ANNOT_LINE:
		{
			fz_point a = { 12, 12 }, b = { 12 + 100, 12 + 50 };
			FUNC9(ctx, annot, a, b);
			FUNC6(ctx, annot, 1);
			FUNC7(ctx, annot, 3, red);
		}
		break;

	case PDF_ANNOT_SQUARE:
	case PDF_ANNOT_CIRCLE:
		{
			fz_rect shape_rect = { 12, 12, 12+100, 12+50 };
			FUNC10(ctx, annot, shape_rect);
			FUNC6(ctx, annot, 1);
			FUNC7(ctx, annot, 3, red);
		}
		break;

	case PDF_ANNOT_POLYGON:
	case PDF_ANNOT_POLY_LINE:
	case PDF_ANNOT_INK:
		FUNC6(ctx, annot, 1);
		FUNC7(ctx, annot, 3, red);
		break;

	case PDF_ANNOT_HIGHLIGHT:
		FUNC7(ctx, annot, 3, yellow);
		break;
	case PDF_ANNOT_UNDERLINE:
		FUNC7(ctx, annot, 3, green);
		break;
	case PDF_ANNOT_STRIKE_OUT:
		FUNC7(ctx, annot, 3, red);
		break;
	case PDF_ANNOT_SQUIGGLY:
		FUNC7(ctx, annot, 3, magenta);
		break;
	}

	FUNC3(ctx, annot->obj, FUNC0(P), page->obj);
	FUNC4(ctx, annot->obj, FUNC0(F), flags);

	return FUNC5(ctx, annot);
}