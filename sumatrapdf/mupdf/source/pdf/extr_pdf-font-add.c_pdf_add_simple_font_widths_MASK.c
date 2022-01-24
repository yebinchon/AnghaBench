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
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FirstChar ; 
 int /*<<< orphan*/  LastChar ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Widths ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, pdf_document *doc, pdf_obj *fobj, fz_font *font, const char * const encoding[])
{
	int width_table[256];
	pdf_obj *widths;
	int i, first, last;

	first = 0;
	last = 0;

	for (i = 0; i < 256; ++i)
	{
		int glyph = 0;
		if (encoding[i])
		{
			glyph = FUNC2(ctx, font, encoding[i]);
		}
		if (glyph > 0)
		{
			if (!first)
				first = i;
			last = i;
			width_table[i] = FUNC1(ctx, font, glyph, 0) * 1000;
		}
		else
			width_table[i] = 0;
	}

	widths = FUNC6(ctx, doc, last - first + 1);
	FUNC4(ctx, fobj, FUNC0(Widths), widths);
	for (i = first; i <= last; ++i)
		FUNC3(ctx, widths, width_table[i]);
	FUNC5(ctx, fobj, FUNC0(FirstChar), first);
	FUNC5(ctx, fobj, FUNC0(LastChar), last);
}