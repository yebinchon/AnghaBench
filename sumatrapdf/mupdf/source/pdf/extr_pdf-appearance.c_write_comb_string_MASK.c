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
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int REPLACEMENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_buffer *buf, const char *a, const char *b, fz_font *font, float cell_w)
{
	float gw, pad, carry = 0;
	FUNC1(ctx, buf, '[');
	while (a < b)
	{
		int c, g;

		a += FUNC4(&c, a);
		c = FUNC6(c);
		if (c < 0) c = REPLACEMENT;

		g = FUNC5(ctx, font, c);
		gw = FUNC0(ctx, font, g, 0) * 1000;
		pad = (cell_w - gw) / 2;
		FUNC2(ctx, buf, "%g", -(carry + pad));
		carry = pad;

		FUNC1(ctx, buf, '(');
		if (c == '(' || c == ')' || c == '\\')
			FUNC1(ctx, buf, '\\');
		FUNC1(ctx, buf, c);
		FUNC1(ctx, buf, ')');
	}
	FUNC3(ctx, buf, "] TJ\n");
}