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
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int REPLACEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int*,char const*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_buffer *buf, const char *a, const char *b)
{
	FUNC0(ctx, buf, '(');
	while (a < b)
	{
		int c;
		a += FUNC1(&c, a);
		c = FUNC2(c);
		if (c < 0) c = REPLACEMENT;
		if (c == '(' || c == ')' || c == '\\')
			FUNC0(ctx, buf, '\\');
		FUNC0(ctx, buf, c);
	}
	FUNC0(ctx, buf, ')');
}