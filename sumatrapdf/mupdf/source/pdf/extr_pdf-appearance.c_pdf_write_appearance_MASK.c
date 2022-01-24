#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_19__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
#define  PDF_ANNOT_CARET 145 
#define  PDF_ANNOT_CIRCLE 144 
#define  PDF_ANNOT_FILE_ATTACHMENT 143 
#define  PDF_ANNOT_FREE_TEXT 142 
#define  PDF_ANNOT_HIGHLIGHT 141 
#define  PDF_ANNOT_INK 140 
#define  PDF_ANNOT_LINE 139 
#define  PDF_ANNOT_POLYGON 138 
#define  PDF_ANNOT_POLY_LINE 137 
#define  PDF_ANNOT_REDACT 136 
#define  PDF_ANNOT_SOUND 135 
#define  PDF_ANNOT_SQUARE 134 
#define  PDF_ANNOT_SQUIGGLY 133 
#define  PDF_ANNOT_STAMP 132 
#define  PDF_ANNOT_STRIKE_OUT 131 
#define  PDF_ANNOT_TEXT 130 
#define  PDF_ANNOT_UNDERLINE 129 
#define  PDF_ANNOT_WIDGET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  fz_identity ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC19(fz_context *ctx, pdf_annot *annot, fz_buffer *buf,
	fz_rect *rect, fz_rect *bbox, fz_matrix *matrix, pdf_obj **res)
{
	switch (FUNC2(ctx, annot))
	{
	default:
		FUNC1(ctx, FZ_ERROR_GENERIC, "cannot create appearance stream for %s annotations",
			FUNC3(ctx, annot->obj, FUNC0(Subtype)));
	case PDF_ANNOT_WIDGET:
		FUNC18(ctx, annot, buf, rect, bbox, matrix, res);
		break;
	case PDF_ANNOT_INK:
		FUNC9(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_POLYGON:
		FUNC11(ctx, annot, buf, rect, 1);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_POLY_LINE:
		FUNC11(ctx, annot, buf, rect, 0);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_LINE:
		FUNC10(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_SQUARE:
		FUNC13(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_CIRCLE:
		FUNC5(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_CARET:
		FUNC4(ctx, annot, buf, rect, bbox);
		*matrix = fz_identity;
		break;
	case PDF_ANNOT_TEXT:
	case PDF_ANNOT_FILE_ATTACHMENT:
	case PDF_ANNOT_SOUND:
		FUNC8(ctx, annot, buf, rect, bbox);
		*matrix = fz_identity;
		break;
	case PDF_ANNOT_HIGHLIGHT:
		FUNC7(ctx, annot, buf, rect, res);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_UNDERLINE:
		FUNC17(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_STRIKE_OUT:
		FUNC16(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_SQUIGGLY:
		FUNC14(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_REDACT:
		FUNC12(ctx, annot, buf, rect);
		*matrix = fz_identity;
		*bbox = *rect;
		break;
	case PDF_ANNOT_STAMP:
		FUNC15(ctx, annot, buf, rect, bbox, res);
		*matrix = fz_identity;
		break;
	case PDF_ANNOT_FREE_TEXT:
		FUNC6(ctx, annot, buf, rect, bbox, matrix, res);
		break;
	}
}