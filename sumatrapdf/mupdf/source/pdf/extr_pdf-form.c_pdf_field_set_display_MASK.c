#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  Display_Hidden 131 
#define  Display_NoPrint 130 
#define  Display_NoView 129 
#define  Display_Visible 128 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  Kids ; 
 int PDF_ANNOT_IS_HIDDEN ; 
 int PDF_ANNOT_IS_NO_VIEW ; 
 int PDF_ANNOT_IS_PRINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(fz_context *ctx, pdf_obj *field, int d)
{
	pdf_obj *kids = FUNC3(ctx, field, FUNC0(Kids));

	if (!kids)
	{
		int mask = (PDF_ANNOT_IS_HIDDEN|PDF_ANNOT_IS_PRINT|PDF_ANNOT_IS_NO_VIEW);
		int f = FUNC4(ctx, field, FUNC0(F)) & ~mask;
		pdf_obj *fo;

		switch (d)
		{
		case Display_Visible:
			f |= PDF_ANNOT_IS_PRINT;
			break;
		case Display_Hidden:
			f |= PDF_ANNOT_IS_HIDDEN;
			break;
		case Display_NoView:
			f |= (PDF_ANNOT_IS_PRINT|PDF_ANNOT_IS_NO_VIEW);
			break;
		case Display_NoPrint:
			break;
		}

		fo = FUNC6(ctx, f);
		FUNC5(ctx, field, FUNC0(F), fo);
	}
	else
	{
		int i, n = FUNC2(ctx, kids);

		for (i = 0; i < n; i++)
			FUNC7(ctx, FUNC1(ctx, kids, i), d);
	}
}