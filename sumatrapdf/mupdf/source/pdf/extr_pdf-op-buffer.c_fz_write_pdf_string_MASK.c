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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  size_t c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, fz_output *out, const unsigned char *str, int len)
{
	int i;

	for (i = 0; i < len; ++i)
		if (str[i] < 32 || str[i] >= 127)
			break;

	if (i < len)
	{
		FUNC0(ctx, out, '<');
		for (i = 0; i < len; ++i)
		{
			unsigned char c = str[i];
			FUNC0(ctx, out, "0123456789abcdef"[(c>>4)&15]);
			FUNC0(ctx, out, "0123456789abcdef"[(c)&15]);
		}
		FUNC0(ctx, out, '>');
	}
	else
	{
		FUNC0(ctx, out, '(');
		for (i = 0; i < len; ++i)
		{
			unsigned char c = str[i];
			if (c == '(' || c == ')' || c == '\\')
				FUNC0(ctx, out, '\\');
			FUNC0(ctx, out, c);
		}
		FUNC0(ctx, out, ')');
	}
}