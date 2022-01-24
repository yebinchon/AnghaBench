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
struct fmt {int dummy; } ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fmt*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fmt*,char*) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, void *fmt_, const unsigned char *s, int n)
{
	struct fmt *fmt = (struct fmt *)fmt_;
	int i, c;

	for (i = 0; i < n; i++)
	{
		c = (unsigned char)s[i];
		if (c == '\n')
			FUNC1(ctx, fmt, "\\n");
		else if (c == '\r')
			FUNC1(ctx, fmt, "\\r");
		else if (c == '\t')
			FUNC1(ctx, fmt, "\\t");
		else if (c == '\b')
			FUNC1(ctx, fmt, "\\b");
		else if (c == '\f')
			FUNC1(ctx, fmt, "\\f");
		else if (c == '(')
			FUNC1(ctx, fmt, "\\(");
		else if (c == ')')
			FUNC1(ctx, fmt, "\\)");
		else if (c == '\\')
			FUNC1(ctx, fmt, "\\\\");
		else if (c < 32 || c >= 127) {
			FUNC0(ctx, fmt, '\\');
			FUNC0(ctx, fmt, '0' + ((c / 64) & 7));
			FUNC0(ctx, fmt, '0' + ((c / 8) & 7));
			FUNC0(ctx, fmt, '0' + ((c) & 7));
		}
		else
			FUNC0(ctx, fmt, c);
	}
}