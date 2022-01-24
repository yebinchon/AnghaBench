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
typedef  int /*<<< orphan*/  fz_layout_block ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int REPLACEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float,float,char const*) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, fz_layout_block *out, float x, float y,
	const char *a, const char *b, fz_font *font, float size, float cell_w)
{
	int n, c, g;
	int first = 1;
	float w;
	if (a == b)
		FUNC1(ctx, out, x + cell_w / 2, y, size, a);
	while (a < b)
	{
		n = FUNC3(&c, a);
		c = FUNC5(c);
		if (c < 0) c = REPLACEMENT;
		g = FUNC4(ctx, font, c);
		w = FUNC2(ctx, font, g, 0) * size;
		if (first)
		{
			FUNC1(ctx, out, x + (cell_w - w) / 2, y, size, a);
			first = 0;
		}
		FUNC0(ctx, out, x + (cell_w - w) / 2, w, a);
		a += n;
		x += cell_w;
	}
}