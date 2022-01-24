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
FUNC6(fz_context *ctx, fz_layout_block *out, fz_font *font, float size,
	float x, float y, const char *a, const char *b)
{
	float w;
	int n, c, g;
	FUNC1(ctx, out, x, y, size, a);
	while (a < b)
	{
		n = FUNC3(&c, a);
		c = FUNC5(c);
		if (c < 0) c = REPLACEMENT;
		g = FUNC4(ctx, font, c);
		w = FUNC2(ctx, font, g, 0) * size;
		FUNC0(ctx, out, x, w, a);
		a += n;
		x += w;
	}
}