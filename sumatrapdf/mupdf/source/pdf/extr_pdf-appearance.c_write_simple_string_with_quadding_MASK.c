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
 float FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,char const*,char const**,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_buffer *buf, fz_font *font, float size,
	const char *a, float maxw, int q)
{
	const char *b;
	float px = 0, x = 0, w;
	while (*a)
	{
		w = FUNC0(ctx, font, size, a, &b, maxw);
		if (b > a)
		{
			if (q > 0)
			{
				if (q == 1)
					x = (maxw - w) / 2;
				else
					x = (maxw - w);
				FUNC1(ctx, buf, "%g %g Td ", x - px, -size);
			}
			if (b[-1] == '\n' || b[-1] == '\r')
				FUNC3(ctx, buf, a, b-1);
			else
				FUNC3(ctx, buf, a, b);
			a = b;
			px = x;
			FUNC2(ctx, buf, (q > 0) ? "Tj\n" : "'\n");
		}
	}
}