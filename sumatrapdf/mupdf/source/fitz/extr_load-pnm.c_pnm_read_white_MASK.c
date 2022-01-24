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

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (unsigned char const) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 
 scalar_t__ FUNC3 (unsigned char const) ; 

__attribute__((used)) static const unsigned char *
FUNC4(fz_context *ctx, const unsigned char *p, const unsigned char *e, int single_line)
{
	if (e - p < 1)
		FUNC0(ctx, FZ_ERROR_GENERIC, "cannot parse whitespace in pnm image");

	if (single_line)
	{
		if (!FUNC3(*p) && *p != '#')
			FUNC0(ctx, FZ_ERROR_GENERIC, "expected whitespace/comment in pnm image");
		while (p < e && FUNC2(*p))
			p++;

		if (p < e && *p == '#')
			while (p < e && !FUNC1(*p))
				p++;
		if (p < e && FUNC1(*p))
			p++;
	}
	else
	{
		if (!FUNC3(*p) && *p != '#')
			FUNC0(ctx, FZ_ERROR_GENERIC, "expected whitespace in pnm image");
		while (p < e && FUNC3(*p))
			p++;

		while (p < e && *p == '#')
		{
			while (p < e && !FUNC1(*p))
				p++;

			if (p < e && FUNC1(*p))
				p++;

			while (p < e && FUNC3(*p))
				p++;

			if (p < e && FUNC1(*p))
				p++;
		}
	}

	return p;
}