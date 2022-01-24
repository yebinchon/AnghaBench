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

/* Variables and functions */
#define  PDF_ANNOT_HIGHLIGHT 135 
#define  PDF_ANNOT_INK 134 
#define  PDF_ANNOT_POLYGON 133 
#define  PDF_ANNOT_POLY_LINE 132 
#define  PDF_ANNOT_REDACT 131 
#define  PDF_ANNOT_SQUIGGLY 130 
#define  PDF_ANNOT_STRIKE_OUT 129 
#define  PDF_ANNOT_UNDERLINE 128 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int is_draw_mode ; 
 int /*<<< orphan*/  page ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  selected_annot ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(int type)
{
	selected_annot = FUNC2(ctx, page, type);

	FUNC4(ctx, selected_annot, FUNC7(NULL));
	if (FUNC1(ctx, selected_annot))
		FUNC3(ctx, selected_annot, FUNC0());

	FUNC5(ctx, selected_annot);

	switch (type)
	{
	case PDF_ANNOT_INK:
	case PDF_ANNOT_POLYGON:
	case PDF_ANNOT_POLY_LINE:
	case PDF_ANNOT_HIGHLIGHT:
	case PDF_ANNOT_UNDERLINE:
	case PDF_ANNOT_STRIKE_OUT:
	case PDF_ANNOT_SQUIGGLY:
	case PDF_ANNOT_REDACT:
		is_draw_mode = 1;
		break;
	}

	FUNC6();
}