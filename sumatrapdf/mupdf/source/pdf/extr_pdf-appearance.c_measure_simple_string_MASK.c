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

/* Variables and functions */
 int REPLACEMENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static float
FUNC4(fz_context *ctx, fz_font *font, const char *text)
{
	float w = 0;
	while (*text)
	{
		int c, g;
		text += FUNC1(&c, text);
		c = FUNC3(c);
		if (c < 0) c = REPLACEMENT;
		g = FUNC2(ctx, font, c);
		w += FUNC0(ctx, font, g, 0);
	}
	return w;
}