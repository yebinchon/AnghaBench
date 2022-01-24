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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  BaseEncoding ; 
 int /*<<< orphan*/  Differences ; 
 int /*<<< orphan*/  Encoding ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WinAnsiEncoding ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, pdf_document *doc, pdf_obj *font, const char *glyph_names[])
{
	pdf_obj *enc, *diff;
	int i, last;

	enc = FUNC5(ctx, font, FUNC0(Encoding), 2);
	FUNC3(ctx, enc, FUNC0(BaseEncoding), FUNC0(WinAnsiEncoding));
	diff = FUNC4(ctx, enc, FUNC0(Differences), 129);
	last = 0;
	for (i = 128; i < 256; ++i)
	{
		const char *glyph = glyph_names[i];
		if (glyph)
		{
			if (last != i-1)
				FUNC1(ctx, diff, i);
			last = i;
			FUNC2(ctx, diff, glyph);
		}
	}
}