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
 int Display_Hidden ; 
 int Display_NoPrint ; 
 int Display_NoView ; 
 int Display_Visible ; 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  Kids ; 
 int PDF_ANNOT_IS_HIDDEN ; 
 int PDF_ANNOT_IS_NO_VIEW ; 
 int PDF_ANNOT_IS_PRINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(fz_context *ctx, pdf_obj *field)
{
	pdf_obj *kids;
	int f, res = Display_Visible;

	/* Base response on first of children. Not ideal,
	 * but not clear how to handle children with
	 * differing values */
	while ((kids = FUNC2(ctx, field, FUNC0(Kids))) != NULL)
		field = FUNC1(ctx, kids, 0);

	f = FUNC3(ctx, field, FUNC0(F));

	if (f & PDF_ANNOT_IS_HIDDEN)
	{
		res = Display_Hidden;
	}
	else if (f & PDF_ANNOT_IS_PRINT)
	{
		if (f & PDF_ANNOT_IS_NO_VIEW)
			res = Display_NoView;
	}
	else
	{
		if (f & PDF_ANNOT_IS_NO_VIEW)
			res = Display_Hidden;
		else
			res = Display_NoPrint;
	}

	return res;
}